
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sxgbe_tx_queue {int dummy; } ;


 struct sxgbe_tx_queue* from_timer (int ,struct timer_list*,int ) ;
 struct sxgbe_tx_queue* p ;
 int sxgbe_tx_queue_clean (struct sxgbe_tx_queue*) ;
 int txtimer ;

__attribute__((used)) static void sxgbe_tx_timer(struct timer_list *t)
{
 struct sxgbe_tx_queue *p = from_timer(p, t, txtimer);
 sxgbe_tx_queue_clean(p);
}
