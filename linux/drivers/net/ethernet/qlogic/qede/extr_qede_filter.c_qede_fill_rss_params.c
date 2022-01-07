
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u16 ;
struct qede_dev {int* rss_ind_table; int rss_params_inited; int rss_caps; int rss_key; TYPE_2__* fp_array; } ;
struct qed_update_vport_rss_params {int rss_caps; int rss_key; int * rss_ind_table; } ;
struct TYPE_4__ {TYPE_1__* rxq; } ;
struct TYPE_3__ {int handle; } ;


 int QEDE_RSS_CAPS_INITED ;
 int QEDE_RSS_COUNT (struct qede_dev*) ;
 int QEDE_RSS_INDIR_INITED ;
 int QEDE_RSS_KEY_INITED ;
 size_t QEDE_RX_QUEUE_IDX (struct qede_dev*,size_t) ;
 int QED_RSS_IND_TABLE_SIZE ;
 int QED_RSS_IPV4 ;
 int QED_RSS_IPV4_TCP ;
 int QED_RSS_IPV6 ;
 int QED_RSS_IPV6_TCP ;
 size_t ethtool_rxfh_indir_default (int,size_t) ;
 int memcpy (int ,int ,int) ;
 int memset (struct qed_update_vport_rss_params*,int ,int) ;
 int netdev_rss_key_fill (int ,int) ;

void qede_fill_rss_params(struct qede_dev *edev,
     struct qed_update_vport_rss_params *rss, u8 *update)
{
 bool need_reset = 0;
 int i;

 if (QEDE_RSS_COUNT(edev) <= 1) {
  memset(rss, 0, sizeof(*rss));
  *update = 0;
  return;
 }


 for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++) {
  if (edev->rss_ind_table[i] >= QEDE_RSS_COUNT(edev)) {
   need_reset = 1;
   break;
  }
 }

 if (!(edev->rss_params_inited & QEDE_RSS_INDIR_INITED) || need_reset) {
  for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++) {
   u16 indir_val, val;

   val = QEDE_RSS_COUNT(edev);
   indir_val = ethtool_rxfh_indir_default(i, val);
   edev->rss_ind_table[i] = indir_val;
  }
  edev->rss_params_inited |= QEDE_RSS_INDIR_INITED;
 }


 for (i = 0; i < QED_RSS_IND_TABLE_SIZE; i++) {
  u16 idx = QEDE_RX_QUEUE_IDX(edev, edev->rss_ind_table[i]);

  rss->rss_ind_table[i] = edev->fp_array[idx].rxq->handle;
 }

 if (!(edev->rss_params_inited & QEDE_RSS_KEY_INITED)) {
  netdev_rss_key_fill(edev->rss_key, sizeof(edev->rss_key));
  edev->rss_params_inited |= QEDE_RSS_KEY_INITED;
 }
 memcpy(rss->rss_key, edev->rss_key, sizeof(rss->rss_key));

 if (!(edev->rss_params_inited & QEDE_RSS_CAPS_INITED)) {
  edev->rss_caps = QED_RSS_IPV4 | QED_RSS_IPV6 |
      QED_RSS_IPV4_TCP | QED_RSS_IPV6_TCP;
  edev->rss_params_inited |= QEDE_RSS_CAPS_INITED;
 }
 rss->rss_caps = edev->rss_caps;

 *update = 1;
}
