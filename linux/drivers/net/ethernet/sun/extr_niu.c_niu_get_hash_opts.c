
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct niu {TYPE_1__* parent; } ;
struct ethtool_rxnfc {scalar_t__ data; int flow_type; } ;
struct TYPE_2__ {int* tcam_key; int * flow_key; } ;


 size_t CLASS_CODE_USER_PROG1 ;
 int EINVAL ;
 scalar_t__ RXH_DISCARD ;
 int TCAM_KEY_DISC ;
 int niu_ethflow_to_class (int ,size_t*) ;
 scalar_t__ niu_flowkey_to_ethflow (int ) ;

__attribute__((used)) static int niu_get_hash_opts(struct niu *np, struct ethtool_rxnfc *nfc)
{
 u64 class;

 nfc->data = 0;

 if (!niu_ethflow_to_class(nfc->flow_type, &class))
  return -EINVAL;

 if (np->parent->tcam_key[class - CLASS_CODE_USER_PROG1] &
     TCAM_KEY_DISC)
  nfc->data = RXH_DISCARD;
 else
  nfc->data = niu_flowkey_to_ethflow(np->parent->flow_key[class -
            CLASS_CODE_USER_PROG1]);
 return 0;
}
