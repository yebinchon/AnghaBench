
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ena_rss {int hash_func; int hash_key_dma_addr; struct ena_admin_feature_rss_flow_hash_control* hash_key; } ;
struct ena_com_dev {struct ena_rss rss; } ;
struct TYPE_3__ {int selected_func; } ;
struct TYPE_4__ {TYPE_1__ flow_hash_func; } ;
struct ena_admin_get_feat_resp {TYPE_2__ u; } ;
struct ena_admin_feature_rss_flow_hash_control {scalar_t__ keys_num; int key; } ;
typedef enum ena_admin_hash_functions { ____Placeholder_ena_admin_hash_functions } ena_admin_hash_functions ;


 int ENA_ADMIN_RSS_HASH_FUNCTION ;
 int ena_com_get_feature_ex (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ,int,int ) ;
 int memcpy (int *,int ,size_t) ;
 scalar_t__ unlikely (int) ;

int ena_com_get_hash_function(struct ena_com_dev *ena_dev,
         enum ena_admin_hash_functions *func,
         u8 *key)
{
 struct ena_rss *rss = &ena_dev->rss;
 struct ena_admin_get_feat_resp get_resp;
 struct ena_admin_feature_rss_flow_hash_control *hash_key =
  rss->hash_key;
 int rc;

 rc = ena_com_get_feature_ex(ena_dev, &get_resp,
        ENA_ADMIN_RSS_HASH_FUNCTION,
        rss->hash_key_dma_addr,
        sizeof(*rss->hash_key), 0);
 if (unlikely(rc))
  return rc;

 rss->hash_func = get_resp.u.flow_hash_func.selected_func;
 if (func)
  *func = rss->hash_func;

 if (key)
  memcpy(key, hash_key->key, (size_t)(hash_key->keys_num) << 2);

 return 0;
}
