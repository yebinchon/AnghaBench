
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** mib; } ;
typedef TYPE_1__ islpci_private ;
typedef enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;
struct TYPE_5__ {int flags; int size; } ;


 int BUG_ON (int) ;
 int OID_FLAG_TYPE ;
 int OID_NUM_LAST ;
 TYPE_3__* isl_oid ;
 int memcpy (void*,int *,int ) ;
 int mgt_le_to_cpu (int,void*) ;

void
mgt_get(islpci_private *priv, enum oid_num_t n, void *res)
{
 BUG_ON(n >= OID_NUM_LAST);
 BUG_ON(priv->mib[n] == ((void*)0));
 BUG_ON(res == ((void*)0));

 memcpy(res, priv->mib[n], isl_oid[n].size);
 mgt_le_to_cpu(isl_oid[n].flags & OID_FLAG_TYPE, res);
}
