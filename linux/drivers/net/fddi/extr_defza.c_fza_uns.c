
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int rx_over_errors; int rx_errors; } ;
struct fza_private {int ring_uns_index; TYPE_2__* ring_uns; TYPE_1__ stats; } ;
struct TYPE_4__ {int own; int id; } ;


 int FZA_RING_OWN_FZA ;
 int FZA_RING_OWN_MASK ;
 scalar_t__ FZA_RING_UNS_RX_OVER ;
 int FZA_RING_UNS_SIZE ;
 struct fza_private* netdev_priv (struct net_device*) ;
 int readl_o (int *) ;
 scalar_t__ readl_u (int *) ;
 int writel_o (int,int *) ;

__attribute__((used)) static void fza_uns(struct net_device *dev)
{
 struct fza_private *fp = netdev_priv(dev);
 u32 own;
 int i;

 while (1) {
  i = fp->ring_uns_index;
  own = readl_o(&fp->ring_uns[i].own);
  if ((own & FZA_RING_OWN_MASK) == FZA_RING_OWN_FZA)
   break;

  if (readl_u(&fp->ring_uns[i].id) == FZA_RING_UNS_RX_OVER) {
   fp->stats.rx_errors++;
   fp->stats.rx_over_errors++;
  }

  writel_o(FZA_RING_OWN_FZA, &fp->ring_uns[i].own);
  fp->ring_uns_index =
   (fp->ring_uns_index + 1) % FZA_RING_UNS_SIZE;
 }
}
