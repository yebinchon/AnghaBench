
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_rx_desc {int dummy; } ;
struct mvpp2_port {int dev; } ;


 int MVPP2_RXD_ERR_CODE_MASK ;



 size_t mvpp2_rxdesc_size_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 int mvpp2_rxdesc_status_get (struct mvpp2_port*,struct mvpp2_rx_desc*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (int ,char*,int,char*,size_t) ;

__attribute__((used)) static void mvpp2_rx_error(struct mvpp2_port *port,
      struct mvpp2_rx_desc *rx_desc)
{
 u32 status = mvpp2_rxdesc_status_get(port, rx_desc);
 size_t sz = mvpp2_rxdesc_size_get(port, rx_desc);
 char *err_str = ((void*)0);

 switch (status & MVPP2_RXD_ERR_CODE_MASK) {
 case 130:
  err_str = "crc";
  break;
 case 129:
  err_str = "overrun";
  break;
 case 128:
  err_str = "resource";
  break;
 }
 if (err_str && net_ratelimit())
  netdev_err(port->dev,
      "bad rx status %08x (%s error), size=%zu\n",
      status, err_str, sz);
}
