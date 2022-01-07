
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * companion; } ;


 TYPE_1__* g_pm80x_chip ;

int pm80x_deinit(void)
{




 if (g_pm80x_chip->companion)
  g_pm80x_chip->companion = ((void*)0);
 else
  g_pm80x_chip = ((void*)0);
 return 0;
}
