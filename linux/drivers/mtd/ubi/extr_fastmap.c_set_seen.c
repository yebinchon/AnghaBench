
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int dummy; } ;


 int set_bit (int,unsigned long*) ;
 int ubi_dbg_chk_fastmap (struct ubi_device*) ;

__attribute__((used)) static inline void set_seen(struct ubi_device *ubi, int pnum, unsigned long *seen)
{
 if (!ubi_dbg_chk_fastmap(ubi) || !seen)
  return;

 set_bit(pnum, seen);
}
