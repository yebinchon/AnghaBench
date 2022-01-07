
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u16 ;
struct net_local {scalar_t__ virt_addr; } ;


 int ioread16 (scalar_t__) ;

__attribute__((used)) static void readwords(struct net_local *lp, int portno, void *buf, int length)
{
 u8 *buf8 = (u8 *)buf;

 do {
  u16 tmp16;

  tmp16 = ioread16(lp->virt_addr + portno);
  *buf8++ = (u8)tmp16;
  *buf8++ = (u8)(tmp16 >> 8);
 } while (--length);
}
