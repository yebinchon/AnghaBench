
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SDIO_CCCR_ABORT ;
 int SDIO_CCCR_SUSPEND ;
 int SD_IO_RW_DIRECT ;
 int SD_IO_RW_EXTENDED ;

__attribute__((used)) static inline bool sdio_is_io_busy(u32 opcode, u32 arg)
{
 u32 addr;

 addr = (arg >> 9) & 0x1FFFF;

 return (opcode == SD_IO_RW_EXTENDED ||
  (opcode == SD_IO_RW_DIRECT &&
  !(addr == SDIO_CCCR_ABORT || addr == SDIO_CCCR_SUSPEND)));
}
