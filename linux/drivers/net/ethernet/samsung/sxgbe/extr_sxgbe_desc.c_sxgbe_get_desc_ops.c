
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sxgbe_desc_ops {int dummy; } ;


 struct sxgbe_desc_ops const desc_ops ;

const struct sxgbe_desc_ops *sxgbe_get_desc_ops(void)
{
 return &desc_ops;
}
