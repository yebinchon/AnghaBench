
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int service_task; int wq; int state; } ;


 int STMMAC_DOWN ;
 int STMMAC_SERVICE_SCHED ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void stmmac_service_event_schedule(struct stmmac_priv *priv)
{
 if (!test_bit(STMMAC_DOWN, &priv->state) &&
     !test_and_set_bit(STMMAC_SERVICE_SCHED, &priv->state))
  queue_work(priv->wq, &priv->service_task);
}
