
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6xxx_atu_entry {int state; } ;


 int mv88e6xxx_g1_atu_flushmove (struct mv88e6xxx_chip*,int ,struct mv88e6xxx_atu_entry*,int) ;

int mv88e6xxx_g1_atu_flush(struct mv88e6xxx_chip *chip, u16 fid, bool all)
{
 struct mv88e6xxx_atu_entry entry = {
  .state = 0,
 };

 return mv88e6xxx_g1_atu_flushmove(chip, fid, &entry, all);
}
