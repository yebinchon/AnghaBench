
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nic {TYPE_1__* csr; } ;
typedef int __le16 ;
struct TYPE_2__ {int eeprom_ctrl_lo; } ;


 int e100_write_flush (struct nic*) ;
 int eecs ;
 int eedi ;
 int eesk ;
 int iowrite8 (int,int *) ;
 int le16_to_cpu (int ) ;
 int msleep (int) ;
 int op_ewds ;
 int op_ewen ;
 int op_write ;
 int udelay (int) ;

__attribute__((used)) static void e100_eeprom_write(struct nic *nic, u16 addr_len, u16 addr, __le16 data)
{
 u32 cmd_addr_data[3];
 u8 ctrl;
 int i, j;


 cmd_addr_data[0] = op_ewen << (addr_len - 2);
 cmd_addr_data[1] = (((op_write << addr_len) | addr) << 16) |
  le16_to_cpu(data);
 cmd_addr_data[2] = op_ewds << (addr_len - 2);


 for (j = 0; j < 3; j++) {


  iowrite8(eecs | eesk, &nic->csr->eeprom_ctrl_lo);
  e100_write_flush(nic); udelay(4);

  for (i = 31; i >= 0; i--) {
   ctrl = (cmd_addr_data[j] & (1 << i)) ?
    eecs | eedi : eecs;
   iowrite8(ctrl, &nic->csr->eeprom_ctrl_lo);
   e100_write_flush(nic); udelay(4);

   iowrite8(ctrl | eesk, &nic->csr->eeprom_ctrl_lo);
   e100_write_flush(nic); udelay(4);
  }

  msleep(10);


  iowrite8(0, &nic->csr->eeprom_ctrl_lo);
  e100_write_flush(nic); udelay(4);
 }
}
