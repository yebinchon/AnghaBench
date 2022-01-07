
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040 {int pll; scalar_t__ power_count; } ;


 int ENODEV ;

int twl6040_get_pll(struct twl6040 *twl6040)
{
 if (twl6040->power_count)
  return twl6040->pll;
 else
  return -ENODEV;
}
