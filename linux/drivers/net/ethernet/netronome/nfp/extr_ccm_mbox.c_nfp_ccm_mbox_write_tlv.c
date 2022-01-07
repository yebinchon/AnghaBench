
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_net {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 int NFP_NET_MBOX_TLV_LEN ;
 int NFP_NET_MBOX_TLV_TYPE ;
 int nn_writel (struct nfp_net*,int ,int) ;

__attribute__((used)) static void
nfp_ccm_mbox_write_tlv(struct nfp_net *nn, u32 off, u32 type, u32 len)
{
 nn_writel(nn, off,
    FIELD_PREP(NFP_NET_MBOX_TLV_TYPE, type) |
    FIELD_PREP(NFP_NET_MBOX_TLV_LEN, len));
}
