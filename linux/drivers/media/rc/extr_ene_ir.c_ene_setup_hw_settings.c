
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {scalar_t__ hw_learning_and_tx_capable; } ;


 int ene_rx_setup (struct ene_device*) ;
 int ene_tx_set_carrier (struct ene_device*) ;
 int ene_tx_set_transmitters (struct ene_device*) ;

__attribute__((used)) static void ene_setup_hw_settings(struct ene_device *dev)
{
 if (dev->hw_learning_and_tx_capable) {
  ene_tx_set_carrier(dev);
  ene_tx_set_transmitters(dev);
 }

 ene_rx_setup(dev);
}
