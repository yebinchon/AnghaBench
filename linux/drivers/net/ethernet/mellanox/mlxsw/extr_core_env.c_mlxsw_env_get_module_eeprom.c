
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlxsw_core {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;


 int EINVAL ;
 int memset (int *,int ,int) ;
 int mlxsw_env_query_module_eeprom (struct mlxsw_core*,int,int,int,int *,unsigned int*) ;
 int netdev_err (struct net_device*,char*) ;

int mlxsw_env_get_module_eeprom(struct net_device *netdev,
    struct mlxsw_core *mlxsw_core, int module,
    struct ethtool_eeprom *ee, u8 *data)
{
 int offset = ee->offset;
 unsigned int read_size;
 int i = 0;
 int err;

 if (!ee->len)
  return -EINVAL;

 memset(data, 0, ee->len);

 while (i < ee->len) {
  err = mlxsw_env_query_module_eeprom(mlxsw_core, module, offset,
          ee->len - i, data + i,
          &read_size);
  if (err) {
   netdev_err(netdev, "Eeprom query failed\n");
   return err;
  }

  i += read_size;
  offset += read_size;
 }

 return 0;
}
