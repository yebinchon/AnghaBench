
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vfl_devnode_type { ____Placeholder_vfl_devnode_type } vfl_devnode_type ;


 unsigned long** devnode_nums ;

__attribute__((used)) static inline unsigned long *devnode_bits(enum vfl_devnode_type vfl_type)
{
 return devnode_nums[vfl_type];
}
