
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int* reta; } ;


 int FM10K_RETA_SIZE ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fm10k_get_reta(struct net_device *netdev, u32 *indir)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 int i;

 if (!indir)
  return 0;

 for (i = 0; i < FM10K_RETA_SIZE; i++, indir += 4) {
  u32 reta = interface->reta[i];

  indir[0] = (reta << 24) >> 24;
  indir[1] = (reta << 16) >> 24;
  indir[2] = (reta << 8) >> 24;
  indir[3] = (reta) >> 24;
 }

 return 0;
}
