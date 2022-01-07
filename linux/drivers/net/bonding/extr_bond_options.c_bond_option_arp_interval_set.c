
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ arp_validate; int * arp_targets; scalar_t__ miimon; scalar_t__ arp_interval; } ;
struct bonding {int arp_work; int wq; int mii_work; int * recv_probe; TYPE_1__ params; TYPE_2__* dev; } ;
struct bond_opt_value {scalar_t__ value; } ;
struct TYPE_4__ {int flags; } ;


 int IFF_UP ;
 int * bond_arp_rcv ;
 int cancel_delayed_work_sync (int *) ;
 int netdev_dbg (TYPE_2__*,char*,...) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static int bond_option_arp_interval_set(struct bonding *bond,
     const struct bond_opt_value *newval)
{
 netdev_dbg(bond->dev, "Setting ARP monitoring interval to %llu\n",
     newval->value);
 bond->params.arp_interval = newval->value;
 if (newval->value) {
  if (bond->params.miimon) {
   netdev_dbg(bond->dev, "ARP monitoring cannot be used with MII monitoring. Disabling MII monitoring\n");
   bond->params.miimon = 0;
  }
  if (!bond->params.arp_targets[0])
   netdev_dbg(bond->dev, "ARP monitoring has been set up, but no ARP targets have been specified\n");
 }
 if (bond->dev->flags & IFF_UP) {





  if (!newval->value) {
   if (bond->params.arp_validate)
    bond->recv_probe = ((void*)0);
   cancel_delayed_work_sync(&bond->arp_work);
  } else {

   bond->recv_probe = bond_arp_rcv;
   cancel_delayed_work_sync(&bond->mii_work);
   queue_delayed_work(bond->wq, &bond->arp_work, 0);
  }
 }

 return 0;
}
