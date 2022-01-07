
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbtf_private {int cmd_response_rxed; int cmd_work; } ;


 int lbtf_wq ;
 int queue_work (int ,int *) ;

void lbtf_cmd_response_rx(struct lbtf_private *priv)
{
 priv->cmd_response_rxed = 1;
 queue_work(lbtf_wq, &priv->cmd_work);
}
