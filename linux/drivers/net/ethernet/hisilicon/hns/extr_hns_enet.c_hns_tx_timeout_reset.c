
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_nic_priv {int tx_timeout_count; int state; int netdev; } ;


 int NIC_STATE2_RESET_REQUESTED ;
 int NIC_STATE_DOWN ;
 int hns_nic_task_schedule (struct hns_nic_priv*) ;
 int netdev_warn (int ,char*,int ,int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void hns_tx_timeout_reset(struct hns_nic_priv *priv)
{

 if (!test_bit(NIC_STATE_DOWN, &priv->state)) {
  set_bit(NIC_STATE2_RESET_REQUESTED, &priv->state);
  netdev_warn(priv->netdev,
       "initiating reset due to tx timeout(%llu,0x%lx)\n",
       priv->tx_timeout_count, priv->state);
  priv->tx_timeout_count++;
  hns_nic_task_schedule(priv);
 }
}
