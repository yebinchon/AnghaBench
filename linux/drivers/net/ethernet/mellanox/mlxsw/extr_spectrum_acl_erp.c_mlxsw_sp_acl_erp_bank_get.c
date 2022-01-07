
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_acl_erp {unsigned int index; TYPE_2__* erp_table; } ;
struct TYPE_4__ {TYPE_1__* erp_core; } ;
struct TYPE_3__ {unsigned int num_erp_banks; } ;



__attribute__((used)) static unsigned int
mlxsw_sp_acl_erp_bank_get(const struct mlxsw_sp_acl_erp *erp)
{
 return erp->index % erp->erp_table->erp_core->num_erp_banks;
}
