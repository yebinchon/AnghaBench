
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct cyclecounter {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int MV88E6XXX_PTP_GC_TIME_LO ;
 struct mv88e6xxx_chip* cc_to_chip (struct cyclecounter const*) ;
 int mv88e6xxx_tai_read (struct mv88e6xxx_chip*,int ,int*,int ) ;

__attribute__((used)) static u64 mv88e6165_ptp_clock_read(const struct cyclecounter *cc)
{
 struct mv88e6xxx_chip *chip = cc_to_chip(cc);
 u16 phc_time[2];
 int err;

 err = mv88e6xxx_tai_read(chip, MV88E6XXX_PTP_GC_TIME_LO, phc_time,
     ARRAY_SIZE(phc_time));
 if (err)
  return 0;
 else
  return ((u32)phc_time[1] << 16) | phc_time[0];
}
