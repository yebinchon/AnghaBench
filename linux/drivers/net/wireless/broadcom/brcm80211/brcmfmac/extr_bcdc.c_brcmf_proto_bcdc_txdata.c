
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct brcmf_pub {int bus_if; } ;


 int brcmf_bus_txdata (int ,struct sk_buff*) ;
 int brcmf_proto_bcdc_hdrpush (struct brcmf_pub*,int,int ,struct sk_buff*) ;

__attribute__((used)) static int
brcmf_proto_bcdc_txdata(struct brcmf_pub *drvr, int ifidx, u8 offset,
   struct sk_buff *pktbuf)
{
 brcmf_proto_bcdc_hdrpush(drvr, ifidx, offset, pktbuf);
 return brcmf_bus_txdata(drvr->bus_if, pktbuf);
}
