
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int twl_idcode; } ;


 int TWL_SIL_TYPE (int ) ;
 TYPE_1__* twl_priv ;

int twl_get_type(void)
{
 return TWL_SIL_TYPE(twl_priv->twl_idcode);
}
