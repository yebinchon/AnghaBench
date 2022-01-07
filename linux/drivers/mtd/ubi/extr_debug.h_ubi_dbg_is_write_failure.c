
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ emulate_io_failures; } ;
struct ubi_device {TYPE_1__ dbg; } ;


 int prandom_u32 () ;

__attribute__((used)) static inline int ubi_dbg_is_write_failure(const struct ubi_device *ubi)
{
 if (ubi->dbg.emulate_io_failures)
  return !(prandom_u32() % 500);
 return 0;
}
