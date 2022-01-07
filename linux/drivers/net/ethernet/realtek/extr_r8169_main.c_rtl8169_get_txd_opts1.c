
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int NUM_TX_DESC ;
 int RingEnd ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static __le32 rtl8169_get_txd_opts1(u32 opts0, u32 len, unsigned int entry)
{
 u32 status = opts0 | len;

 if (entry == NUM_TX_DESC - 1)
  status |= RingEnd;

 return cpu_to_le32(status);
}
