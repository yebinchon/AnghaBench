
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_rx_desc {int status; int data_size; } ;
struct mvneta_port {int dev; } ;


 int MVNETA_RXD_ERR_CODE_MASK ;




 int netdev_err (int ,char*,int,int ) ;

__attribute__((used)) static void mvneta_rx_error(struct mvneta_port *pp,
       struct mvneta_rx_desc *rx_desc)
{
 u32 status = rx_desc->status;

 switch (status & MVNETA_RXD_ERR_CODE_MASK) {
 case 131:
  netdev_err(pp->dev, "bad rx status %08x (crc error), size=%d\n",
      status, rx_desc->data_size);
  break;
 case 129:
  netdev_err(pp->dev, "bad rx status %08x (overrun error), size=%d\n",
      status, rx_desc->data_size);
  break;
 case 130:
  netdev_err(pp->dev, "bad rx status %08x (max frame length error), size=%d\n",
      status, rx_desc->data_size);
  break;
 case 128:
  netdev_err(pp->dev, "bad rx status %08x (resource error), size=%d\n",
      status, rx_desc->data_size);
  break;
 }
}
