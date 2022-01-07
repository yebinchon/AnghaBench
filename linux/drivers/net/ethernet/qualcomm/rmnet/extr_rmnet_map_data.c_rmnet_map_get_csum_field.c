
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int check; } ;
struct tcphdr {int check; } ;
typedef int __sum16 ;





__attribute__((used)) static __sum16 *rmnet_map_get_csum_field(unsigned char protocol,
      const void *txporthdr)
{
 __sum16 *check = ((void*)0);

 switch (protocol) {
 case 129:
  check = &(((struct tcphdr *)txporthdr)->check);
  break;

 case 128:
  check = &(((struct udphdr *)txporthdr)->check);
  break;

 default:
  check = ((void*)0);
  break;
 }

 return check;
}
