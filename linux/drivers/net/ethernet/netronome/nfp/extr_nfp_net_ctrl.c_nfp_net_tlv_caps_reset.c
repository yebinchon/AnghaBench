
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_tlv_caps {int me_freq_mhz; int mbox_len; int mbox_off; } ;


 int NFP_NET_CFG_MBOX_BASE ;
 int NFP_NET_CFG_MBOX_VAL_MAX_SZ ;
 int memset (struct nfp_net_tlv_caps*,int ,int) ;

__attribute__((used)) static void nfp_net_tlv_caps_reset(struct nfp_net_tlv_caps *caps)
{
 memset(caps, 0, sizeof(*caps));
 caps->me_freq_mhz = 1200;
 caps->mbox_off = NFP_NET_CFG_MBOX_BASE;
 caps->mbox_len = NFP_NET_CFG_MBOX_VAL_MAX_SZ;
}
