
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_peer_notif; } ;
struct bonding {TYPE_1__ params; } ;
struct bond_opt_value {int value; } ;



__attribute__((used)) static int bond_option_num_peer_notif_set(struct bonding *bond,
       const struct bond_opt_value *newval)
{
 bond->params.num_peer_notif = newval->value;

 return 0;
}
