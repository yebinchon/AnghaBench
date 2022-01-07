
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmpe {int domain; TYPE_1__* pdata; int dev; } ;
struct mfd_cell {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int mfd_add_devices (int ,int ,struct mfd_cell const*,int,int *,int ,int ) ;

__attribute__((used)) static int stmpe_add_device(struct stmpe *stmpe, const struct mfd_cell *cell)
{
 return mfd_add_devices(stmpe->dev, stmpe->pdata->id, cell, 1,
          ((void*)0), 0, stmpe->domain);
}
