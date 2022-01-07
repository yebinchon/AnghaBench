
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct niu {TYPE_1__* parent; } ;
struct ethtool_rxnfc {int data; int flow_type; } ;
struct TYPE_2__ {scalar_t__* tcam_key; scalar_t__* flow_key; } ;


 scalar_t__ CLASS_CODE_SCTP_IPV6 ;
 scalar_t__ CLASS_CODE_USER_PROG1 ;
 int EINVAL ;
 int FLOW_KEY (scalar_t__) ;
 int RXH_DISCARD ;
 int TCAM_KEY (scalar_t__) ;
 scalar_t__ TCAM_KEY_DISC ;
 int niu_ethflow_to_class (int ,scalar_t__*) ;
 int niu_ethflow_to_flowkey (int,scalar_t__*) ;
 int niu_lock_parent (struct niu*,unsigned long) ;
 int niu_unlock_parent (struct niu*,unsigned long) ;
 int nw64 (int ,scalar_t__) ;

__attribute__((used)) static int niu_set_hash_opts(struct niu *np, struct ethtool_rxnfc *nfc)
{
 u64 class;
 u64 flow_key = 0;
 unsigned long flags;

 if (!niu_ethflow_to_class(nfc->flow_type, &class))
  return -EINVAL;

 if (class < CLASS_CODE_USER_PROG1 ||
     class > CLASS_CODE_SCTP_IPV6)
  return -EINVAL;

 if (nfc->data & RXH_DISCARD) {
  niu_lock_parent(np, flags);
  flow_key = np->parent->tcam_key[class -
            CLASS_CODE_USER_PROG1];
  flow_key |= TCAM_KEY_DISC;
  nw64(TCAM_KEY(class - CLASS_CODE_USER_PROG1), flow_key);
  np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] = flow_key;
  niu_unlock_parent(np, flags);
  return 0;
 } else {

  if (np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] &
      TCAM_KEY_DISC) {
   niu_lock_parent(np, flags);
   flow_key = np->parent->tcam_key[class -
            CLASS_CODE_USER_PROG1];
   flow_key &= ~TCAM_KEY_DISC;
   nw64(TCAM_KEY(class - CLASS_CODE_USER_PROG1),
        flow_key);
   np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] =
    flow_key;
   niu_unlock_parent(np, flags);
  }
 }

 if (!niu_ethflow_to_flowkey(nfc->data, &flow_key))
  return -EINVAL;

 niu_lock_parent(np, flags);
 nw64(FLOW_KEY(class - CLASS_CODE_USER_PROG1), flow_key);
 np->parent->flow_key[class - CLASS_CODE_USER_PROG1] = flow_key;
 niu_unlock_parent(np, flags);

 return 0;
}
