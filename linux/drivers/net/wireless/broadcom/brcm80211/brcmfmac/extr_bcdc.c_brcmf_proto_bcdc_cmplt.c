
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_pub {int bus_if; TYPE_1__* proto; } ;
struct brcmf_proto_bcdc_dcmd {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct brcmf_bcdc {TYPE_2__ msg; } ;
struct TYPE_3__ {scalar_t__ pd; } ;


 int BCDC ;
 int BCDC_DCMD_ID (int ) ;
 int brcmf_bus_rxctl (int ,unsigned char*,int) ;
 int brcmf_dbg (int ,char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int brcmf_proto_bcdc_cmplt(struct brcmf_pub *drvr, u32 id, u32 len)
{
 int ret;
 struct brcmf_bcdc *bcdc = (struct brcmf_bcdc *)drvr->proto->pd;

 brcmf_dbg(BCDC, "Enter\n");
 len += sizeof(struct brcmf_proto_bcdc_dcmd);
 do {
  ret = brcmf_bus_rxctl(drvr->bus_if, (unsigned char *)&bcdc->msg,
          len);
  if (ret < 0)
   break;
 } while (BCDC_DCMD_ID(le32_to_cpu(bcdc->msg.flags)) != id);

 return ret;
}
