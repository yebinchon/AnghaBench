
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int RxProtoTCP ;
 unsigned int RxProtoUDP ;
 int TCPFail ;
 int UDPFail ;

__attribute__((used)) static inline unsigned int cp_rx_csum_ok (u32 status)
{
 unsigned int protocol = (status >> 16) & 0x3;

 if (((protocol == RxProtoTCP) && !(status & TCPFail)) ||
     ((protocol == RxProtoUDP) && !(status & UDPFail)))
  return 1;
 else
  return 0;
}
