
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_nic_priv {int service_task; int state; } ;


 int NIC_STATE_DOWN ;
 int NIC_STATE_REMOVING ;
 int NIC_STATE_SERVICE_SCHED ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hns_nic_task_schedule(struct hns_nic_priv *priv)
{
 if (!test_bit(NIC_STATE_DOWN, &priv->state) &&
     !test_bit(NIC_STATE_REMOVING, &priv->state) &&
     !test_and_set_bit(NIC_STATE_SERVICE_SCHED, &priv->state))
  (void)schedule_work(&priv->service_task);
}
