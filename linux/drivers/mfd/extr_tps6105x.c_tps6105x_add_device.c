
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps6105x {TYPE_1__* client; } ;
struct mfd_cell {int pdata_size; struct tps6105x* platform_data; } ;
struct TYPE_2__ {int dev; } ;


 int PLATFORM_DEVID_AUTO ;
 int mfd_add_devices (int *,int ,struct mfd_cell*,int,int *,int ,int *) ;

__attribute__((used)) static int tps6105x_add_device(struct tps6105x *tps6105x,
          struct mfd_cell *cell)
{
 cell->platform_data = tps6105x;
 cell->pdata_size = sizeof(*tps6105x);

 return mfd_add_devices(&tps6105x->client->dev,
          PLATFORM_DEVID_AUTO, cell, 1, ((void*)0), 0, ((void*)0));
}
