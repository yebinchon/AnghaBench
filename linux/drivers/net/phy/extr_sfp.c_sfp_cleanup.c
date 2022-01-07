
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {scalar_t__ i2c; scalar_t__ i2c_mii; int timeout; int poll; } ;


 int cancel_delayed_work_sync (int *) ;
 int i2c_put_adapter (scalar_t__) ;
 int kfree (struct sfp*) ;
 int mdiobus_free (scalar_t__) ;
 int mdiobus_unregister (scalar_t__) ;

__attribute__((used)) static void sfp_cleanup(void *data)
{
 struct sfp *sfp = data;

 cancel_delayed_work_sync(&sfp->poll);
 cancel_delayed_work_sync(&sfp->timeout);
 if (sfp->i2c_mii) {
  mdiobus_unregister(sfp->i2c_mii);
  mdiobus_free(sfp->i2c_mii);
 }
 if (sfp->i2c)
  i2c_put_adapter(sfp->i2c);
 kfree(sfp);
}
