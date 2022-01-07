
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int dummy; } ;


 int ql_petbi_reset_ex (struct ql3_adapter*) ;
 int ql_petbi_start_neg_ex (struct ql3_adapter*) ;

__attribute__((used)) static void ql_petbi_init_ex(struct ql3_adapter *qdev)
{
 ql_petbi_reset_ex(qdev);
 ql_petbi_start_neg_ex(qdev);
}
