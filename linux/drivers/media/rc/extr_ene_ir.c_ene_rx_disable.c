
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int rx_enabled; } ;


 int ene_rx_disable_hw (struct ene_device*) ;

__attribute__((used)) static void ene_rx_disable(struct ene_device *dev)
{
 ene_rx_disable_hw(dev);
 dev->rx_enabled = 0;
}
