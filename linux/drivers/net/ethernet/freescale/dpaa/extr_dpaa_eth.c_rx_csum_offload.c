
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qm_fd {int status; } ;
struct dpaa_priv {TYPE_1__* net_dev; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int FM_FD_STAT_L4CV ;
 int NETIF_F_RXCSUM ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static u8 rx_csum_offload(const struct dpaa_priv *priv, const struct qm_fd *fd)
{




 if ((priv->net_dev->features & NETIF_F_RXCSUM) &&
     (be32_to_cpu(fd->status) & FM_FD_STAT_L4CV))
  return CHECKSUM_UNNECESSARY;





 return CHECKSUM_NONE;
}
