
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct gve_priv {TYPE_1__* reg_bar0; } ;
struct TYPE_2__ {int adminq_event_counter; } ;


 int GVE_ADMINQ_SLEEP_LEN ;
 int GVE_MAX_ADMINQ_EVENT_COUNTER_CHECK ;
 scalar_t__ ioread32be (int *) ;
 int msleep (int ) ;

__attribute__((used)) static bool gve_adminq_wait_for_cmd(struct gve_priv *priv, u32 prod_cnt)
{
 int i;

 for (i = 0; i < GVE_MAX_ADMINQ_EVENT_COUNTER_CHECK; i++) {
  if (ioread32be(&priv->reg_bar0->adminq_event_counter)
      == prod_cnt)
   return 1;
  msleep(GVE_ADMINQ_SLEEP_LEN);
 }

 return 0;
}
