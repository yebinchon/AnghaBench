
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int REG_RAM_BIST_CMD ;
 int pr_err (char*,int) ;
 int udelay (int) ;
 int vsc_read (int *,int ,int*) ;
 int vsc_write (int *,int ,int) ;

__attribute__((used)) static int bist_wr(adapter_t *adapter, int moduleid, int address, int value)
{
 int data = 0;
 u32 result = 0;

 if ((address != 0x0) &&
     (address != 0x1) &&
     (address != 0x2) &&
     (address != 0xd) &&
     (address != 0xe))
   pr_err("No bist address: 0x%x\n", address);

 if (value > 255)
  pr_err("Suspicious write out of range value: 0x%x\n", value);

 data = ((0x01 << 24) | ((address & 0xff) << 16) | (value << 8) |
  ((moduleid & 0xff) << 0));
 vsc_write(adapter, REG_RAM_BIST_CMD, data);

 udelay(5);

 vsc_read(adapter, REG_RAM_BIST_CMD, &result);
 if ((result & (1 << 27)) != 0x0)
  pr_err("Still in bist write: 0x%x\n", result);
 else if ((result & (1 << 26)) != 0x0)
  pr_err("bist write error: 0x%x\n", result);

 return 0;
}
