
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_iscsi_ops {int dummy; } ;


 struct qed_iscsi_ops const qed_iscsi_ops_pass ;

const struct qed_iscsi_ops *qed_get_iscsi_ops(void)
{
 return &qed_iscsi_ops_pass;
}
