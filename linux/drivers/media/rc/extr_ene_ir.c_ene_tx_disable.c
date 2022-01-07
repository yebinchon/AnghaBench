
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int * tx_buffer; int saved_conf1; } ;


 int ENE_CIRCFG ;
 int ene_write_reg (struct ene_device*,int ,int ) ;

__attribute__((used)) static void ene_tx_disable(struct ene_device *dev)
{
 ene_write_reg(dev, ENE_CIRCFG, dev->saved_conf1);
 dev->tx_buffer = ((void*)0);
}
