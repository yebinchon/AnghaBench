
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smiapp_sensor {TYPE_1__ pll; } ;


 int SMIAPP_PLL_FLAG_OP_PIX_CLOCK_PER_LANE ;

__attribute__((used)) static int jt8ev1_init(struct smiapp_sensor *sensor)
{
 sensor->pll.flags |= SMIAPP_PLL_FLAG_OP_PIX_CLOCK_PER_LANE;

 return 0;
}
