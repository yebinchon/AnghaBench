
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx23885_dev {int dummy; } ;


 int MC417_MICS ;
 int MC417_MIRD ;
 int MC417_MIRDY ;
 int MC417_MIWR ;
 int MC417_OEN ;
 int MC417_RWD ;
 int MCI_MEMORY_ADDRESS_BYTE0 ;
 int MCI_MEMORY_ADDRESS_BYTE1 ;
 int MCI_MEMORY_ADDRESS_BYTE2 ;
 int MCI_MEMORY_DATA_BYTE0 ;
 int MCI_MEMORY_DATA_BYTE1 ;
 int MCI_MEMORY_DATA_BYTE2 ;
 int MCI_MEMORY_DATA_BYTE3 ;
 int MCI_MODE_MEMORY_WRITE ;
 int cx_write (int ,int) ;
 int mc417_wait_ready (struct cx23885_dev*) ;

int mc417_memory_write(struct cx23885_dev *dev, u32 address, u32 value)
{
 u32 regval;




 cx_write(MC417_OEN, MC417_MIRDY);


 regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE0 |
  (value & 0x000000FF);
 cx_write(MC417_RWD, regval);


 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE1 |
  ((value >> 8) & 0x000000FF);
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE2 |
  ((value >> 16) & 0x000000FF);
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_DATA_BYTE3 |
  ((value >> 24) & 0x000000FF);
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_ADDRESS_BYTE2 |
  MCI_MODE_MEMORY_WRITE | ((address >> 16) & 0x3F);
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_ADDRESS_BYTE1 |
  ((address >> 8) & 0xFF);
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 regval = MC417_MIRD | MC417_MIRDY | MCI_MEMORY_ADDRESS_BYTE0 |
  (address & 0xFF);
 cx_write(MC417_RWD, regval);
 regval |= MC417_MICS | MC417_MIWR;
 cx_write(MC417_RWD, regval);


 return mc417_wait_ready(dev);
}
