
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct niu {int device; } ;


 int EINVAL ;
 int ENODEV ;
 int ESPC_PIO_STAT ;
 int ESPC_PIO_STAT_ADDR ;
 int ESPC_PIO_STAT_ADDR_SHIFT ;
 int ESPC_PIO_STAT_DATA ;
 int ESPC_PIO_STAT_DATA_SHIFT ;
 int ESPC_PIO_STAT_READ_END ;
 int ESPC_PIO_STAT_READ_START ;
 int dev_err (int ,char*,unsigned long long) ;
 int nr64 (int ) ;
 int nw64 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int niu_pci_eeprom_read(struct niu *np, u32 addr)
{
 u64 frame, frame_base = (ESPC_PIO_STAT_READ_START |
     (addr << ESPC_PIO_STAT_ADDR_SHIFT));
 int limit;

 if (addr > (ESPC_PIO_STAT_ADDR >> ESPC_PIO_STAT_ADDR_SHIFT))
  return -EINVAL;

 frame = frame_base;
 nw64(ESPC_PIO_STAT, frame);
 limit = 64;
 do {
  udelay(5);
  frame = nr64(ESPC_PIO_STAT);
  if (frame & ESPC_PIO_STAT_READ_END)
   break;
 } while (limit--);
 if (!(frame & ESPC_PIO_STAT_READ_END)) {
  dev_err(np->device, "EEPROM read timeout frame[%llx]\n",
   (unsigned long long) frame);
  return -ENODEV;
 }

 frame = frame_base;
 nw64(ESPC_PIO_STAT, frame);
 limit = 64;
 do {
  udelay(5);
  frame = nr64(ESPC_PIO_STAT);
  if (frame & ESPC_PIO_STAT_READ_END)
   break;
 } while (limit--);
 if (!(frame & ESPC_PIO_STAT_READ_END)) {
  dev_err(np->device, "EEPROM read timeout frame[%llx]\n",
   (unsigned long long) frame);
  return -ENODEV;
 }

 frame = nr64(ESPC_PIO_STAT);
 return (frame & ESPC_PIO_STAT_DATA) >> ESPC_PIO_STAT_DATA_SHIFT;
}
