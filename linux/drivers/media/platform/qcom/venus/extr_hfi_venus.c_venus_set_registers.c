
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_resources {unsigned int reg_tbl_size; struct reg_val* reg_tbl; } ;
struct venus_hfi_device {TYPE_1__* core; } ;
struct reg_val {int value; int reg; } ;
struct TYPE_2__ {struct venus_resources* res; } ;


 int venus_writel (struct venus_hfi_device*,int ,int ) ;

__attribute__((used)) static void venus_set_registers(struct venus_hfi_device *hdev)
{
 const struct venus_resources *res = hdev->core->res;
 const struct reg_val *tbl = res->reg_tbl;
 unsigned int count = res->reg_tbl_size;
 unsigned int i;

 for (i = 0; i < count; i++)
  venus_writel(hdev, tbl[i].reg, tbl[i].value);
}
