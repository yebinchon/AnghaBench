
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethoc {scalar_t__ iobase; scalar_t__ big_endian; } ;
typedef scalar_t__ loff_t ;


 int iowrite32 (int ,scalar_t__) ;
 int iowrite32be (int ,scalar_t__) ;

__attribute__((used)) static inline void ethoc_write(struct ethoc *dev, loff_t offset, u32 data)
{
 if (dev->big_endian)
  iowrite32be(data, dev->iobase + offset);
 else
  iowrite32(data, dev->iobase + offset);
}
