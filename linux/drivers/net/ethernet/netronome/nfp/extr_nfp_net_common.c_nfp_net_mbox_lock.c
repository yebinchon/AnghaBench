
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mbox_len; } ;
struct nfp_net {TYPE_1__ tlv_caps; } ;


 int EIO ;
 scalar_t__ NFP_NET_CFG_MBOX_SIMPLE_VAL ;
 int nn_ctrl_bar_lock (struct nfp_net*) ;
 int nn_err (struct nfp_net*,char*,unsigned int,scalar_t__) ;

int nfp_net_mbox_lock(struct nfp_net *nn, unsigned int data_size)
{
 if (nn->tlv_caps.mbox_len < NFP_NET_CFG_MBOX_SIMPLE_VAL + data_size) {
  nn_err(nn, "mailbox too small for %u of data (%u)\n",
         data_size, nn->tlv_caps.mbox_len);
  return -EIO;
 }

 nn_ctrl_bar_lock(nn);
 return 0;
}
