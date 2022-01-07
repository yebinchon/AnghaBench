
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct in_addr {int dummy; } ;



__attribute__((used)) static inline int sierra_net_is_valid_addrlen(u8 len)
{
 return len == sizeof(struct in_addr);
}
