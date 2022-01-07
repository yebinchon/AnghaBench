
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ar9003_txc {int ctl16; int ctl15; } ;


 int AR_PacketDur0 ;
 int AR_PacketDur1 ;
 int AR_PacketDur2 ;
 int AR_PacketDur3 ;
 int MS (int ,int ) ;
 int READ_ONCE (int ) ;

__attribute__((used)) static int ar9003_hw_get_duration(struct ath_hw *ah, const void *ds, int index)
{
 const struct ar9003_txc *adc = ds;

 switch (index) {
 case 0:
  return MS(READ_ONCE(adc->ctl15), AR_PacketDur0);
 case 1:
  return MS(READ_ONCE(adc->ctl15), AR_PacketDur1);
 case 2:
  return MS(READ_ONCE(adc->ctl16), AR_PacketDur2);
 case 3:
  return MS(READ_ONCE(adc->ctl16), AR_PacketDur3);
 default:
  return 0;
 }
}
