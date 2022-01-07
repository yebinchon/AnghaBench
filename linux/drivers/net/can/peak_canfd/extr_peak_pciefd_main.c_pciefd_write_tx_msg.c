
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pucan_tx_msg {int size; } ;
struct peak_canfd_priv {int dummy; } ;
struct pciefd_page {int offset; } ;
struct pciefd_can {int tx_page_index; struct pciefd_page* tx_pages; } ;


 int PCIEFD_REG_CAN_TX_REQ_ACC ;
 scalar_t__ le16_to_cpu (int ) ;
 int pciefd_can_writereg (struct pciefd_can*,int,int ) ;

__attribute__((used)) static int pciefd_write_tx_msg(struct peak_canfd_priv *ucan,
          struct pucan_tx_msg *msg)
{
 struct pciefd_can *priv = (struct pciefd_can *)ucan;
 struct pciefd_page *page = priv->tx_pages + priv->tx_page_index;


 page->offset += le16_to_cpu(msg->size);


 pciefd_can_writereg(priv, 1, PCIEFD_REG_CAN_TX_REQ_ACC);

 return 0;
}
