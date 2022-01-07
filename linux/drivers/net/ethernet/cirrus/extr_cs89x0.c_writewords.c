
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_local {scalar_t__ virt_addr; } ;


 int iowrite16 (int,scalar_t__) ;

__attribute__((used)) static void writewords(struct net_local *lp, int portno, void *buf, int length)
{
 u8 *buf8 = (u8 *)buf;

 do {
  u16 tmp16;

  tmp16 = *buf8++;
  tmp16 |= (*buf8++) << 8;
  iowrite16(tmp16, lp->virt_addr + portno);
 } while (--length);
}
