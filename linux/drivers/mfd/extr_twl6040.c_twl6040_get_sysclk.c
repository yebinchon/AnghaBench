
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040 {unsigned int sysclk_rate; } ;



unsigned int twl6040_get_sysclk(struct twl6040 *twl6040)
{
 return twl6040->sysclk_rate;
}
