
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int vsi; int vid; } ;
struct fm10k_macvlan_request {int set; int list; TYPE_1__ vlan; int type; } ;
struct fm10k_intfc {int macvlan_lock; int macvlan_requests; } ;


 int ENOMEM ;
 int FM10K_VLAN_REQUEST ;
 int GFP_ATOMIC ;
 int fm10k_macvlan_schedule (struct fm10k_intfc*) ;
 struct fm10k_macvlan_request* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int fm10k_queue_vlan_request(struct fm10k_intfc *interface,
        u32 vid, u8 vsi, bool set)
{
 struct fm10k_macvlan_request *request;
 unsigned long flags;




 request = kzalloc(sizeof(*request), GFP_ATOMIC);
 if (!request)
  return -ENOMEM;

 request->type = FM10K_VLAN_REQUEST;
 request->vlan.vid = vid;
 request->vlan.vsi = vsi;
 request->set = set;

 spin_lock_irqsave(&interface->macvlan_lock, flags);
 list_add_tail(&request->list, &interface->macvlan_requests);
 spin_unlock_irqrestore(&interface->macvlan_lock, flags);

 fm10k_macvlan_schedule(interface);

 return 0;
}
