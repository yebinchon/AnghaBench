
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ams_delta_nand {int gpiod_nwe; } ;


 int gpiod_set_value (int ,int) ;
 int ndelay (int) ;

__attribute__((used)) static void ams_delta_write_commit(struct ams_delta_nand *priv)
{
 gpiod_set_value(priv->gpiod_nwe, 0);
 ndelay(40);
 gpiod_set_value(priv->gpiod_nwe, 1);
}
