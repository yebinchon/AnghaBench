
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_REG_MTMP_GBOX_INDEX_MIN ;

__attribute__((used)) static int mlxsw_hwmon_get_attr_index(int index, int count)
{
 if (index >= count)
  return index % count + MLXSW_REG_MTMP_GBOX_INDEX_MIN;

 return index;
}
