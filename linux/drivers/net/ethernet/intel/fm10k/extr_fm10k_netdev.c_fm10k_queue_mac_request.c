
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_2__ {void* vid; void* glort; int addr; } ;
struct fm10k_macvlan_request {int set; int list; TYPE_1__ mac; int type; } ;
struct fm10k_intfc {int macvlan_lock; int macvlan_requests; } ;


 int ENOMEM ;
 int FM10K_MC_MAC_REQUEST ;
 int FM10K_UC_MAC_REQUEST ;
 int GFP_ATOMIC ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int fm10k_macvlan_schedule (struct fm10k_intfc*) ;
 scalar_t__ is_multicast_ether_addr (unsigned char const*) ;
 struct fm10k_macvlan_request* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int fm10k_queue_mac_request(struct fm10k_intfc *interface, u16 glort,
       const unsigned char *addr, u16 vid, bool set)
{
 struct fm10k_macvlan_request *request;
 unsigned long flags;




 request = kzalloc(sizeof(*request), GFP_ATOMIC);
 if (!request)
  return -ENOMEM;

 if (is_multicast_ether_addr(addr))
  request->type = FM10K_MC_MAC_REQUEST;
 else
  request->type = FM10K_UC_MAC_REQUEST;

 ether_addr_copy(request->mac.addr, addr);
 request->mac.glort = glort;
 request->mac.vid = vid;
 request->set = set;

 spin_lock_irqsave(&interface->macvlan_lock, flags);
 list_add_tail(&request->list, &interface->macvlan_requests);
 spin_unlock_irqrestore(&interface->macvlan_lock, flags);

 fm10k_macvlan_schedule(interface);

 return 0;
}
