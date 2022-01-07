
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_core_ops {int dummy; } ;


 struct sxgbe_core_ops const core_ops ;

const struct sxgbe_core_ops *sxgbe_get_core_ops(void)
{
 return &core_ops;
}
