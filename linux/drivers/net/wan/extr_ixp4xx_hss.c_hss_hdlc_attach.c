
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int hdlc_cfg; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 unsigned short ENCODING_NRZ ;


 int PKT_HDLC_CRC_32 ;
 struct port* dev_to_port (struct net_device*) ;

__attribute__((used)) static int hss_hdlc_attach(struct net_device *dev, unsigned short encoding,
      unsigned short parity)
{
 struct port *port = dev_to_port(dev);

 if (encoding != ENCODING_NRZ)
  return -EINVAL;

 switch(parity) {
 case 129:
  port->hdlc_cfg = 0;
  return 0;

 case 128:
  port->hdlc_cfg = PKT_HDLC_CRC_32;
  return 0;

 default:
  return -EINVAL;
 }
}
