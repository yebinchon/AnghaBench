
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int RCAR_CAN_FIFO_DEPTH ;
 int can_free_echo_skb (struct net_device*,int) ;

__attribute__((used)) static void tx_failure_cleanup(struct net_device *ndev)
{
 int i;

 for (i = 0; i < RCAR_CAN_FIFO_DEPTH; i++)
  can_free_echo_skb(ndev, i);
}
