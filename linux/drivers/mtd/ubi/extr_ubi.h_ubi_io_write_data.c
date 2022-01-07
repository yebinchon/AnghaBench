
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {scalar_t__ leb_start; } ;


 int ubi_assert (int) ;
 int ubi_io_write (struct ubi_device*,void const*,int,scalar_t__,int) ;

__attribute__((used)) static inline int ubi_io_write_data(struct ubi_device *ubi, const void *buf,
        int pnum, int offset, int len)
{
 ubi_assert(offset >= 0);
 return ubi_io_write(ubi, buf, pnum, offset + ubi->leb_start, len);
}
