
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_priv_buf {scalar_t__ buf_size; scalar_t__ enable; } ;
struct hclge_pkt_buf_alloc {struct hclge_priv_buf* priv_buf; } ;


 int HCLGE_MAX_TC_NUM ;

__attribute__((used)) static u32 hclge_get_rx_priv_buff_alloced(struct hclge_pkt_buf_alloc *buf_alloc)
{
 struct hclge_priv_buf *priv;
 u32 rx_priv = 0;
 int i;

 for (i = 0; i < HCLGE_MAX_TC_NUM; i++) {
  priv = &buf_alloc->priv_buf[i];
  if (priv->enable)
   rx_priv += priv->buf_size;
 }
 return rx_priv;
}
