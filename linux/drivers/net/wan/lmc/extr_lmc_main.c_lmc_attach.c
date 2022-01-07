
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;
 unsigned short ENCODING_NRZ ;
 unsigned short PARITY_CRC16_PR1_CCITT ;

__attribute__((used)) static int lmc_attach(struct net_device *dev, unsigned short encoding,
        unsigned short parity)
{
 if (encoding == ENCODING_NRZ && parity == PARITY_CRC16_PR1_CCITT)
  return 0;
 return -EINVAL;
}
