
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ ip_summed; int priority; scalar_t__ data; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_proto_bcdc_header {int flags; int priority; int data_offset; scalar_t__ flags2; } ;


 int BCDC ;
 int BCDC_FLAG_SUM_NEEDED ;
 int BCDC_FLAG_VER_SHIFT ;
 int BCDC_HEADER_LEN ;
 int BCDC_PRIORITY_MASK ;
 int BCDC_PROTO_VER ;
 int BCDC_SET_IF_IDX (struct brcmf_proto_bcdc_header*,int) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int brcmf_dbg (int ,char*) ;
 int skb_push (struct sk_buff*,int ) ;
 int trace_brcmf_bcdchdr (scalar_t__) ;

__attribute__((used)) static void
brcmf_proto_bcdc_hdrpush(struct brcmf_pub *drvr, int ifidx, u8 offset,
    struct sk_buff *pktbuf)
{
 struct brcmf_proto_bcdc_header *h;

 brcmf_dbg(BCDC, "Enter\n");


 skb_push(pktbuf, BCDC_HEADER_LEN);

 h = (struct brcmf_proto_bcdc_header *)(pktbuf->data);

 h->flags = (BCDC_PROTO_VER << BCDC_FLAG_VER_SHIFT);
 if (pktbuf->ip_summed == CHECKSUM_PARTIAL)
  h->flags |= BCDC_FLAG_SUM_NEEDED;

 h->priority = (pktbuf->priority & BCDC_PRIORITY_MASK);
 h->flags2 = 0;
 h->data_offset = offset;
 BCDC_SET_IF_IDX(h, ifidx);
 trace_brcmf_bcdchdr(pktbuf->data);
}
