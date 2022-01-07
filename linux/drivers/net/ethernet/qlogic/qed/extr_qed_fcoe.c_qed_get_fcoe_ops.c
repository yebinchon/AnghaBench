
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_fcoe_ops {int dummy; } ;


 struct qed_fcoe_ops const qed_fcoe_ops_pass ;

const struct qed_fcoe_ops *qed_get_fcoe_ops(void)
{
 return &qed_fcoe_ops_pass;
}
