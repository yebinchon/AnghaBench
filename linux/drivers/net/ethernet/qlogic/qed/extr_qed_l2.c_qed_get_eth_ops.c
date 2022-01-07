
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_eth_ops {int dummy; } ;


 struct qed_eth_ops const qed_eth_ops_pass ;

const struct qed_eth_ops *qed_get_eth_ops(void)
{
 return &qed_eth_ops_pass;
}
