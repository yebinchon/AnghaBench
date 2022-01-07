
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct islpci_mgmtframe {TYPE_1__* header; } ;
struct TYPE_7__ {int mib_sem; int ndev; void** mib; } ;
typedef TYPE_2__ islpci_private ;
typedef enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;
struct TYPE_8__ {int range; int size; int flags; scalar_t__ oid; } ;
struct TYPE_6__ {int operation; } ;


 int BUG_ON (int) ;
 int EIO ;
 int OID_FLAG_TYPE ;
 int OID_NUM_LAST ;
 int PIMFOR_OP_ERROR ;
 int PIMFOR_OP_SET ;
 scalar_t__ PRV_STATE_READY ;
 int down_write (int *) ;
 TYPE_5__* isl_oid ;
 scalar_t__ islpci_get_state (TYPE_2__*) ;
 int islpci_mgt_release (struct islpci_mgmtframe*) ;
 int islpci_mgt_transaction (int ,int ,scalar_t__,void*,int,struct islpci_mgmtframe**) ;
 int memcpy (void*,void*,int) ;
 int mgt_cpu_to_le (int,void*) ;
 int mgt_le_to_cpu (int,void*) ;
 int up_write (int *) ;

int
mgt_set_request(islpci_private *priv, enum oid_num_t n, int extra, void *data)
{
 int ret = 0;
 struct islpci_mgmtframe *response = ((void*)0);
 int response_op = PIMFOR_OP_ERROR;
 int dlen;
 void *cache, *_data = data;
 u32 oid;

 BUG_ON(n >= OID_NUM_LAST);
 BUG_ON(extra > isl_oid[n].range);

 if (!priv->mib)

  return -1;

 dlen = isl_oid[n].size;
 cache = priv->mib[n];
 cache += (cache ? extra * dlen : 0);
 oid = isl_oid[n].oid + extra;

 if (_data == ((void*)0))

  _data = cache;
 else
  mgt_cpu_to_le(isl_oid[n].flags & OID_FLAG_TYPE, _data);






 if (cache)
  down_write(&priv->mib_sem);

 if (islpci_get_state(priv) >= PRV_STATE_READY) {
  ret = islpci_mgt_transaction(priv->ndev, PIMFOR_OP_SET, oid,
          _data, dlen, &response);
  if (!ret) {
   response_op = response->header->operation;
   islpci_mgt_release(response);
  }
  if (ret || response_op == PIMFOR_OP_ERROR)
   ret = -EIO;
 } else if (!cache)
  ret = -EIO;

 if (cache) {
  if (!ret && data)
   memcpy(cache, _data, dlen);
  up_write(&priv->mib_sem);
 }


 if (data)
  mgt_le_to_cpu(isl_oid[n].flags & OID_FLAG_TYPE, data);

 return ret;
}
