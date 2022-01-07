
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int twl_id; } ;


 TYPE_1__* twl_priv ;

unsigned int twl_rev(void)
{
 return twl_priv ? twl_priv->twl_id : 0;
}
