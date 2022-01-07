
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {int dummy; } ;


 int EIO ;
 int NETXEN_ROMUSB_ROM_ABYTE_CNT ;
 int NETXEN_ROMUSB_ROM_ADDRESS ;
 int NETXEN_ROMUSB_ROM_DUMMY_BYTE_CNT ;
 int NETXEN_ROMUSB_ROM_INSTR_OPCODE ;
 int NETXEN_ROMUSB_ROM_RDATA ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 scalar_t__ netxen_wait_rom_done (struct netxen_adapter*) ;
 int printk (char*) ;
 int udelay (int) ;

__attribute__((used)) static int do_rom_fast_read(struct netxen_adapter *adapter,
       int addr, int *valp)
{
 NXWR32(adapter, NETXEN_ROMUSB_ROM_ADDRESS, addr);
 NXWR32(adapter, NETXEN_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);
 NXWR32(adapter, NETXEN_ROMUSB_ROM_ABYTE_CNT, 3);
 NXWR32(adapter, NETXEN_ROMUSB_ROM_INSTR_OPCODE, 0xb);
 if (netxen_wait_rom_done(adapter)) {
  printk("Error waiting for rom done\n");
  return -EIO;
 }

 NXWR32(adapter, NETXEN_ROMUSB_ROM_ABYTE_CNT, 0);
 udelay(10);
 NXWR32(adapter, NETXEN_ROMUSB_ROM_DUMMY_BYTE_CNT, 0);

 *valp = NXRD32(adapter, NETXEN_ROMUSB_ROM_RDATA);
 return 0;
}
