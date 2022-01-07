
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mii_bus {struct mdio_mux_child_bus* priv; } ;
struct mdio_mux_parent_bus {int (* switch_fn ) (int ,int ,int ) ;TYPE_1__* mii_bus; int current_child; int switch_data; } ;
struct mdio_mux_child_bus {int bus_number; struct mdio_mux_parent_bus* parent; } ;
struct TYPE_2__ {int (* write ) (TYPE_1__*,int,int,int ) ;int mdio_lock; } ;


 int MDIO_MUTEX_MUX ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int ,int ) ;
 int stub2 (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int mdio_mux_write(struct mii_bus *bus, int phy_id,
     int regnum, u16 val)
{
 struct mdio_mux_child_bus *cb = bus->priv;
 struct mdio_mux_parent_bus *pb = cb->parent;

 int r;

 mutex_lock_nested(&pb->mii_bus->mdio_lock, MDIO_MUTEX_MUX);
 r = pb->switch_fn(pb->current_child, cb->bus_number, pb->switch_data);
 if (r)
  goto out;

 pb->current_child = cb->bus_number;

 r = pb->mii_bus->write(pb->mii_bus, phy_id, regnum, val);
out:
 mutex_unlock(&pb->mii_bus->mdio_lock);

 return r;
}
