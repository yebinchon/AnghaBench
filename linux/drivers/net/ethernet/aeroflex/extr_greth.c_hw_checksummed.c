
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GRETH_RXBD_IP ;
 int GRETH_RXBD_IP_CSERR ;
 int GRETH_RXBD_IP_FRAG ;
 int GRETH_RXBD_TCP ;
 int GRETH_RXBD_TCP_CSERR ;
 int GRETH_RXBD_UDP ;
 int GRETH_RXBD_UDP_CSERR ;

__attribute__((used)) static inline int hw_checksummed(u32 status)
{

 if (status & GRETH_RXBD_IP_FRAG)
  return 0;

 if (status & GRETH_RXBD_IP && status & GRETH_RXBD_IP_CSERR)
  return 0;

 if (status & GRETH_RXBD_UDP && status & GRETH_RXBD_UDP_CSERR)
  return 0;

 if (status & GRETH_RXBD_TCP && status & GRETH_RXBD_TCP_CSERR)
  return 0;

 return 1;
}
