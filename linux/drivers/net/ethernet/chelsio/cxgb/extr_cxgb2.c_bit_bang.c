
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_ELMER0_GPO ;
 int __t1_tpi_read (struct adapter*,int ,int*) ;
 int __t1_tpi_write (struct adapter*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void bit_bang(struct adapter *adapter, int bitdata, int nbits)
{
 int data;
 int i;
 u32 val;

 enum {
  S_CLOCK = 1 << 3,
  S_DATA = 1 << 4
 };

 for (i = (nbits - 1); i > -1; i--) {

  udelay(50);

  data = ((bitdata >> i) & 0x1);
  __t1_tpi_read(adapter, A_ELMER0_GPO, &val);

  if (data)
   val |= S_DATA;
  else
   val &= ~S_DATA;

  udelay(50);


  val &= ~S_CLOCK;
  __t1_tpi_write(adapter, A_ELMER0_GPO, val);

  udelay(50);


  val |= S_CLOCK;
  __t1_tpi_write(adapter, A_ELMER0_GPO, val);

 }
}
