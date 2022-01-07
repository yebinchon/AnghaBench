
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_nic_priv {int state; } ;


 int NIC_STATE_SERVICE_SCHED ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int smp_mb__before_atomic () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hns_nic_service_event_complete(struct hns_nic_priv *priv)
{
 WARN_ON(!test_bit(NIC_STATE_SERVICE_SCHED, &priv->state));

 smp_mb__before_atomic();
 clear_bit(NIC_STATE_SERVICE_SCHED, &priv->state);
}
