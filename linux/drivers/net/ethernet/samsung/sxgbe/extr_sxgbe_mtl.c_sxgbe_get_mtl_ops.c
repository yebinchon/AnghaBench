
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_mtl_ops {int dummy; } ;


 struct sxgbe_mtl_ops const mtl_ops ;

const struct sxgbe_mtl_ops *sxgbe_get_mtl_ops(void)
{
 return &mtl_ops;
}
