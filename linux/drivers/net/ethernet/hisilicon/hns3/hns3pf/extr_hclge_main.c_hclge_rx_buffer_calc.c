
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_pkt_buf_alloc {int dummy; } ;
struct hclge_dev {int pkt_buf_size; } ;


 int ENOMEM ;
 scalar_t__ hclge_drop_nopfc_buf_till_fit (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ;
 scalar_t__ hclge_drop_pfc_buf_till_fit (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ;
 scalar_t__ hclge_get_tx_buff_alloced (struct hclge_pkt_buf_alloc*) ;
 int hclge_is_rx_buf_ok (struct hclge_dev*,struct hclge_pkt_buf_alloc*,int ) ;
 scalar_t__ hclge_only_alloc_priv_buff (struct hclge_dev*,struct hclge_pkt_buf_alloc*) ;
 scalar_t__ hclge_rx_buf_calc_all (struct hclge_dev*,int,struct hclge_pkt_buf_alloc*) ;
 int hnae3_dev_dcb_supported (struct hclge_dev*) ;

__attribute__((used)) static int hclge_rx_buffer_calc(struct hclge_dev *hdev,
    struct hclge_pkt_buf_alloc *buf_alloc)
{

 if (!hnae3_dev_dcb_supported(hdev)) {
  u32 rx_all = hdev->pkt_buf_size;

  rx_all -= hclge_get_tx_buff_alloced(buf_alloc);
  if (!hclge_is_rx_buf_ok(hdev, buf_alloc, rx_all))
   return -ENOMEM;

  return 0;
 }

 if (hclge_only_alloc_priv_buff(hdev, buf_alloc))
  return 0;

 if (hclge_rx_buf_calc_all(hdev, 1, buf_alloc))
  return 0;


 if (hclge_rx_buf_calc_all(hdev, 0, buf_alloc))
  return 0;

 if (hclge_drop_nopfc_buf_till_fit(hdev, buf_alloc))
  return 0;

 if (hclge_drop_pfc_buf_till_fit(hdev, buf_alloc))
  return 0;

 return -ENOMEM;
}
