
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_proto_bcdc_dcmd {int status; int flags; } ;
struct brcmf_bcdc {int reqid; int * buf; struct brcmf_proto_bcdc_dcmd msg; } ;
struct TYPE_2__ {scalar_t__ pd; } ;


 int BCDC ;
 int BCDC_DCMD_ERROR ;
 int BCDC_DCMD_ID_MASK ;
 int BCDC_DCMD_ID_SHIFT ;
 int EINVAL ;
 int RETRIES ;
 int bphy_err (struct brcmf_pub*,char*,int,...) ;
 int brcmf_dbg (int ,char*,int,int) ;
 int brcmf_get_ifp (struct brcmf_pub*,int) ;
 int brcmf_ifname (int ) ;
 int brcmf_proto_bcdc_cmplt (struct brcmf_pub*,int,int) ;
 int brcmf_proto_bcdc_msg (struct brcmf_pub*,int,int,void*,int,int) ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static int
brcmf_proto_bcdc_query_dcmd(struct brcmf_pub *drvr, int ifidx, uint cmd,
       void *buf, uint len, int *fwerr)
{
 struct brcmf_bcdc *bcdc = (struct brcmf_bcdc *)drvr->proto->pd;
 struct brcmf_proto_bcdc_dcmd *msg = &bcdc->msg;
 void *info;
 int ret = 0, retries = 0;
 u32 id, flags;

 brcmf_dbg(BCDC, "Enter, cmd %d len %d\n", cmd, len);

 *fwerr = 0;
 ret = brcmf_proto_bcdc_msg(drvr, ifidx, cmd, buf, len, 0);
 if (ret < 0) {
  bphy_err(drvr, "brcmf_proto_bcdc_msg failed w/status %d\n",
    ret);
  goto done;
 }

retry:

 ret = brcmf_proto_bcdc_cmplt(drvr, bcdc->reqid, len);
 if (ret < 0)
  goto done;

 flags = le32_to_cpu(msg->flags);
 id = (flags & BCDC_DCMD_ID_MASK) >> BCDC_DCMD_ID_SHIFT;

 if ((id < bcdc->reqid) && (++retries < RETRIES))
  goto retry;
 if (id != bcdc->reqid) {
  bphy_err(drvr, "%s: unexpected request id %d (expected %d)\n",
    brcmf_ifname(brcmf_get_ifp(drvr, ifidx)), id,
    bcdc->reqid);
  ret = -EINVAL;
  goto done;
 }


 info = (void *)&bcdc->buf[0];


 if (buf) {
  if (ret < (int)len)
   len = ret;
  memcpy(buf, info, len);
 }

 ret = 0;


 if (flags & BCDC_DCMD_ERROR)
  *fwerr = le32_to_cpu(msg->status);
done:
 return ret;
}
