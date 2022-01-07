
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int mbox_len; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;


 scalar_t__ NFP_NET_CFG_MBOX_SIMPLE_VAL ;
 scalar_t__ round_down (int ,int) ;

__attribute__((used)) static u32 nfp_ccm_mbox_max_msg(struct nfp_net *nn)
{
 return round_down(nn->tlv_caps.mbox_len, 4) -
  NFP_NET_CFG_MBOX_SIMPLE_VAL -
  4 * 2;
}
