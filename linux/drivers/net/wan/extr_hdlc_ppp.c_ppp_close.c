
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ppp_tx_flush () ;

__attribute__((used)) static void ppp_close(struct net_device *dev)
{
 ppp_tx_flush();
}
