
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ams_delta_nand {int gpiod_nce; } ;


 int gpiod_set_value (int ,int) ;

__attribute__((used)) static void ams_delta_ctrl_cs(struct ams_delta_nand *priv, bool assert)
{
 gpiod_set_value(priv->gpiod_nce, assert ? 0 : 1);
}
