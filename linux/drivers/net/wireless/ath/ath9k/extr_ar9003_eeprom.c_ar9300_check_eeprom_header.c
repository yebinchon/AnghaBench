
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int dummy; } ;
typedef int (* eeprom_read_op ) (struct ath_hw*,int,int *,int) ;


 int ar9300_check_header (int *) ;

__attribute__((used)) static bool ar9300_check_eeprom_header(struct ath_hw *ah, eeprom_read_op read,
           int base_addr)
{
 u8 header[4];

 if (!read(ah, base_addr, header, 4))
  return 0;

 return ar9300_check_header(header);
}
