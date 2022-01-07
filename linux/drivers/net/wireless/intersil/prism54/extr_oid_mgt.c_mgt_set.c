
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
 int memcpy (int *,void*,int ) ;
 int mgt_cpu_to_le (int,int *) ;

void
mgt_set(islpci_private *priv, enum oid_num_t n, void *data)
{
 BUG_ON(n >= OID_NUM_LAST);
 BUG_ON(priv->mib[n] == ((void*)0));

 memcpy(priv->mib[n], data, isl_oid[n].size);
 mgt_cpu_to_le(isl_oid[n].flags & OID_FLAG_TYPE, priv->mib[n]);
}
