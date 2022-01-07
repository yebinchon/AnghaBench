
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vhalf ;
typedef int byte ;


 scalar_t__ PA_83902 ;
 int STNIC_DELAY () ;

__attribute__((used)) static inline byte
STNIC_READ (int reg)
{
  byte val;

  val = (*(vhalf *) (PA_83902 + ((reg) << 1)) >> 8) & 0xff;
  STNIC_DELAY ();
  return val;
}
