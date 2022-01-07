
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct fm10k_intfc {int* reta; TYPE_1__* pdev; int netdev; TYPE_2__* ring_feature; } ;
struct TYPE_4__ {size_t indices; } ;
struct TYPE_3__ {int dev; } ;


 size_t FM10K_RETA_SIZE ;
 size_t RING_F_RSS ;
 int dev_err (int *,char*) ;
 int fm10k_write_reta (struct fm10k_intfc*,int *) ;
 scalar_t__ netif_is_rxfh_configured (int ) ;

__attribute__((used)) static void fm10k_init_reta(struct fm10k_intfc *interface)
{
 u16 i, rss_i = interface->ring_feature[RING_F_RSS].indices;
 u32 reta;




 if (netif_is_rxfh_configured(interface->netdev)) {
  for (i = FM10K_RETA_SIZE; i--;) {
   reta = interface->reta[i];
   if ((((reta << 24) >> 24) < rss_i) &&
       (((reta << 16) >> 24) < rss_i) &&
       (((reta << 8) >> 24) < rss_i) &&
       (((reta) >> 24) < rss_i))
    continue;


   dev_err(&interface->pdev->dev,
    "RSS indirection table assigned flows out of queue bounds. Reconfiguring.\n");
   goto repopulate_reta;
  }


  return;
 }

repopulate_reta:
 fm10k_write_reta(interface, ((void*)0));
}
