
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct port {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {unsigned short encoding; unsigned short parity; } ;


 int EINVAL ;
 unsigned short ENCODING_NRZ ;
 unsigned short ENCODING_NRZI ;
 unsigned short PARITY_CRC16_PR0_CCITT ;
 unsigned short PARITY_CRC16_PR1_CCITT ;
 unsigned short PARITY_CRC32_PR0_CCITT ;
 unsigned short PARITY_CRC32_PR1_CCITT ;
 unsigned short PARITY_NONE ;
 struct port* dev_to_port (struct net_device*) ;
 TYPE_1__* get_status (struct port*) ;

__attribute__((used)) static int wanxl_attach(struct net_device *dev, unsigned short encoding,
   unsigned short parity)
{
 struct port *port = dev_to_port(dev);

 if (encoding != ENCODING_NRZ &&
     encoding != ENCODING_NRZI)
  return -EINVAL;

 if (parity != PARITY_NONE &&
     parity != PARITY_CRC32_PR1_CCITT &&
     parity != PARITY_CRC16_PR1_CCITT &&
     parity != PARITY_CRC32_PR0_CCITT &&
     parity != PARITY_CRC16_PR0_CCITT)
  return -EINVAL;

 get_status(port)->encoding = encoding;
 get_status(port)->parity = parity;
 return 0;
}
