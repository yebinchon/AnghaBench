
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmComResBusInfo {scalar_t__ m_dwSizeSetRing; scalar_t__ m_dwSizeGetRing; int m_dwGetWritePos; int m_dwGetReadPos; int m_dwSetWritePos; int m_dwSetReadPos; } ;
struct saa7164_dev {struct tmComResBusInfo bus; } ;


 int BUG () ;
 int saa7164_bus_dump (struct saa7164_dev*) ;
 scalar_t__ saa7164_readl (int ) ;
 int saa_debug ;

__attribute__((used)) static void saa7164_bus_verify(struct saa7164_dev *dev)
{
 struct tmComResBusInfo *b = &dev->bus;
 int bug = 0;

 if (saa7164_readl(b->m_dwSetReadPos) > b->m_dwSizeSetRing)
  bug++;

 if (saa7164_readl(b->m_dwSetWritePos) > b->m_dwSizeSetRing)
  bug++;

 if (saa7164_readl(b->m_dwGetReadPos) > b->m_dwSizeGetRing)
  bug++;

 if (saa7164_readl(b->m_dwGetWritePos) > b->m_dwSizeGetRing)
  bug++;

 if (bug) {
  saa_debug = 0xffff;
  saa7164_bus_dump(dev);
  saa_debug = 1024;
  BUG();
 }
}
