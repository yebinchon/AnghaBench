
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int virt_addr_valid (int *) ;

__attribute__((used)) static inline bool buf_needs_bounce(u8 *buf)
{
 return ((unsigned long) buf & 0x3) || !virt_addr_valid(buf);
}
