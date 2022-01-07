
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {int dummy; } ;


 scalar_t__ FM93C56A_READ ;
 int fm93c56a_cmd (struct ql3_adapter*,int,int ) ;
 int fm93c56a_datain (struct ql3_adapter*,unsigned short*) ;
 int fm93c56a_deselect (struct ql3_adapter*) ;
 int fm93c56a_select (struct ql3_adapter*) ;

__attribute__((used)) static void eeprom_readword(struct ql3_adapter *qdev,
       u32 eepromAddr, unsigned short *value)
{
 fm93c56a_select(qdev);
 fm93c56a_cmd(qdev, (int)FM93C56A_READ, eepromAddr);
 fm93c56a_datain(qdev, value);
 fm93c56a_deselect(qdev);
}
