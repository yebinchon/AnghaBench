
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MT_PACKET_ID_FIRST ;
 int MT_PACKET_ID_HAS_RATE ;

__attribute__((used)) static inline bool mt76_is_skb_pktid(u8 pktid)
{
 if (pktid & MT_PACKET_ID_HAS_RATE)
  return 0;

 return pktid >= MT_PACKET_ID_FIRST;
}
