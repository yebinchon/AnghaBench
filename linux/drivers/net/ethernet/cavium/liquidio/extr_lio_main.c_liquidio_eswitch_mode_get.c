
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct octeon_device {int eswitch_mode; } ;
struct lio_devlink_priv {struct octeon_device* oct; } ;
struct devlink {int dummy; } ;


 struct lio_devlink_priv* devlink_priv (struct devlink*) ;

__attribute__((used)) static int
liquidio_eswitch_mode_get(struct devlink *devlink, u16 *mode)
{
 struct lio_devlink_priv *priv;
 struct octeon_device *oct;

 priv = devlink_priv(devlink);
 oct = priv->oct;

 *mode = oct->eswitch_mode;

 return 0;
}
