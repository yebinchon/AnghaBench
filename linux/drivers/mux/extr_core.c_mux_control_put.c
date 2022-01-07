
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mux_control {TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; } ;


 int put_device (int *) ;

void mux_control_put(struct mux_control *mux)
{
 put_device(&mux->chip->dev);
}
