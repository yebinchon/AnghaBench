
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncsi_dev {scalar_t__ state; scalar_t__ link_up; int dev; } ;


 scalar_t__ ncsi_dev_state_functional ;
 int netdev_dbg (int ,char*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ftgmac100_ncsi_handler(struct ncsi_dev *nd)
{
 if (unlikely(nd->state != ncsi_dev_state_functional))
  return;

 netdev_dbg(nd->dev, "NCSI interface %s\n",
     nd->link_up ? "up" : "down");
}
