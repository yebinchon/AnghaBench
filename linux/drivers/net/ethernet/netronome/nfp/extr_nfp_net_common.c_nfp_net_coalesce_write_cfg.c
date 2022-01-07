
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ num_rx_rings; scalar_t__ num_tx_rings; } ;
struct TYPE_4__ {int me_freq_mhz; } ;
struct nfp_net {int rx_coalesce_max_frames; int rx_coalesce_usecs; int tx_coalesce_max_frames; int tx_coalesce_usecs; TYPE_1__ dp; TYPE_2__ tlv_caps; } ;


 int NFP_NET_CFG_RXR_IRQ_MOD (scalar_t__) ;
 int NFP_NET_CFG_TXR_IRQ_MOD (scalar_t__) ;
 int nn_writel (struct nfp_net*,int ,int) ;

void nfp_net_coalesce_write_cfg(struct nfp_net *nn)
{
 u8 i;
 u32 factor;
 u32 value;





 factor = nn->tlv_caps.me_freq_mhz / 16;


 value = (nn->rx_coalesce_max_frames << 16) |
  (factor * nn->rx_coalesce_usecs);
 for (i = 0; i < nn->dp.num_rx_rings; i++)
  nn_writel(nn, NFP_NET_CFG_RXR_IRQ_MOD(i), value);


 value = (nn->tx_coalesce_max_frames << 16) |
  (factor * nn->tx_coalesce_usecs);
 for (i = 0; i < nn->dp.num_tx_rings; i++)
  nn_writel(nn, NFP_NET_CFG_TXR_IRQ_MOD(i), value);
}
