
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int BA_SETUP_MAX_PACKET_THRESHOLD ;
 int BA_SETUP_PACKET_OFFSET ;
 int ktime_get_ns () ;

__attribute__((used)) static u8 mwifiex_get_random_ba_threshold(void)
{
 u64 ns;




 ns = ktime_get_ns();
 ns += (ns >> 32) + (ns >> 16);

 return ((u8)ns % BA_SETUP_MAX_PACKET_THRESHOLD) + BA_SETUP_PACKET_OFFSET;
}
