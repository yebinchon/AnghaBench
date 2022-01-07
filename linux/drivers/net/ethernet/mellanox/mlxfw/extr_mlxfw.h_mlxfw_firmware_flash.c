
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlxfw_dev {int dummy; } ;
struct firmware {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline
int mlxfw_firmware_flash(struct mlxfw_dev *mlxfw_dev,
    const struct firmware *firmware,
    struct netlink_ext_ack *extack)
{
 return -EOPNOTSUPP;
}
