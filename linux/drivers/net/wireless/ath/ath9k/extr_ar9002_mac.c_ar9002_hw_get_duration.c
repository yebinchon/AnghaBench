
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
struct ar5416_desc {int ds_ctl5; int ds_ctl4; } ;


 struct ar5416_desc* AR5416DESC (void const*) ;
 int AR_PacketDur0 ;
 int AR_PacketDur1 ;
 int AR_PacketDur2 ;
 int AR_PacketDur3 ;
 int MS (int ,int ) ;
 int READ_ONCE (int ) ;

__attribute__((used)) static int ar9002_hw_get_duration(struct ath_hw *ah, const void *ds, int index)
{
 struct ar5416_desc *ads = AR5416DESC(ds);

 switch (index) {
 case 0:
  return MS(READ_ONCE(ads->ds_ctl4), AR_PacketDur0);
 case 1:
  return MS(READ_ONCE(ads->ds_ctl4), AR_PacketDur1);
 case 2:
  return MS(READ_ONCE(ads->ds_ctl5), AR_PacketDur2);
 case 3:
  return MS(READ_ONCE(ads->ds_ctl5), AR_PacketDur3);
 default:
  return -1;
 }
}
