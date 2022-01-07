
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ath_hw {int dummy; } ;


 int ar9300_otp_read_word (struct ath_hw*,int,int*) ;

__attribute__((used)) static bool ar9300_read_otp(struct ath_hw *ah, int address, u8 *buffer,
       int count)
{
 u32 data;
 int i;

 for (i = 0; i < count; i++) {
  int offset = 8 * ((address - i) % 4);
  if (!ar9300_otp_read_word(ah, (address - i) / 4, &data))
   return 0;

  buffer[i] = (data >> offset) & 0xff;
 }

 return 1;
}
