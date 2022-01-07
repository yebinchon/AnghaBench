
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_chip {int dummy; } ;


 unsigned int CB710_DUMP_ACCESS_16 ;
 unsigned int CB710_DUMP_ACCESS_32 ;
 unsigned int CB710_DUMP_ACCESS_8 ;
 unsigned int CB710_DUMP_ACCESS_MASK ;
 unsigned int CB710_DUMP_REGS_ALL ;
 unsigned int CB710_DUMP_REGS_MASK ;
 int cb710_read_and_dump_regs_16 (struct cb710_chip*,unsigned int) ;
 int cb710_read_and_dump_regs_32 (struct cb710_chip*,unsigned int) ;
 int cb710_read_and_dump_regs_8 (struct cb710_chip*,unsigned int) ;

void cb710_dump_regs(struct cb710_chip *chip, unsigned select)
{
 if (!(select & CB710_DUMP_REGS_MASK))
  select = CB710_DUMP_REGS_ALL;
 if (!(select & CB710_DUMP_ACCESS_MASK))
  select |= CB710_DUMP_ACCESS_8;

 if (select & CB710_DUMP_ACCESS_32)
  cb710_read_and_dump_regs_32(chip, select);
 if (select & CB710_DUMP_ACCESS_16)
  cb710_read_and_dump_regs_16(chip, select);
 if (select & CB710_DUMP_ACCESS_8)
  cb710_read_and_dump_regs_8(chip, select);
}
