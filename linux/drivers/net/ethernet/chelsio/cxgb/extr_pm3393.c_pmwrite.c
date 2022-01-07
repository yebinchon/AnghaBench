
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cmac {int adapter; } ;


 int OFFSET (int ) ;
 int t1_tpi_write (int ,int ,int ) ;

__attribute__((used)) static int pmwrite(struct cmac *cmac, u32 reg, u32 data32)
{
 t1_tpi_write(cmac->adapter, OFFSET(reg), data32);
 return 0;
}
