
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MV88E6XXX_PTP_TS_STATUS_MASK ;
 int MV88E6XXX_PTP_TS_VALID ;

__attribute__((used)) static int mv88e6xxx_ts_valid(u16 status)
{
 if (!(status & MV88E6XXX_PTP_TS_VALID))
  return 0;
 if (status & MV88E6XXX_PTP_TS_STATUS_MASK)
  return 0;
 return 1;
}
