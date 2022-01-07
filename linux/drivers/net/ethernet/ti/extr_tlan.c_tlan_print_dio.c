
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int pr_info (char*,...) ;
 int tlan_dio_read32 (int ,int) ;

__attribute__((used)) static void tlan_print_dio(u16 io_base)
{
 u32 data0, data1;
 int i;

 pr_info("Contents of internal registers for io base 0x%04hx\n",
  io_base);
 pr_info("Off.  +0        +4\n");
 for (i = 0; i < 0x4C; i += 8) {
  data0 = tlan_dio_read32(io_base, i);
  data1 = tlan_dio_read32(io_base, i + 0x4);
  pr_info("0x%02x  0x%08x 0x%08x\n", i, data0, data1);
 }

}
