
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int t1powersave; int tpi_lock; } ;


 int A_ELMER0_GPO ;
 int EALREADY ;
 int ENODEV ;
 int HCLOCK ;
 int LCLOCK ;
 int __t1_tpi_read (struct adapter*,int ,int*) ;
 int __t1_tpi_write (struct adapter*,int ,int) ;
 int bit_bang (struct adapter*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t1_is_T1B (struct adapter*) ;
 int udelay (int) ;

__attribute__((used)) static int t1_clock(struct adapter *adapter, int mode)
{
 u32 val;
 int M_CORE_VAL;
 int M_MEM_VAL;

 enum {
  M_CORE_BITS = 9,
  T_CORE_VAL = 0,
  T_CORE_BITS = 2,
  N_CORE_VAL = 0,
  N_CORE_BITS = 2,
  M_MEM_BITS = 9,
  T_MEM_VAL = 0,
  T_MEM_BITS = 2,
  N_MEM_VAL = 0,
  N_MEM_BITS = 2,
  NP_LOAD = 1 << 17,
  S_LOAD_MEM = 1 << 5,
  S_LOAD_CORE = 1 << 6,
  S_CLOCK = 1 << 3
 };

 if (!t1_is_T1B(adapter))
  return -ENODEV;

 if (mode & 2)
  return 0;

 if ((adapter->t1powersave & 1) == (mode & 1))
  return -EALREADY;

 if ((mode & 1) == HCLOCK) {
  M_CORE_VAL = 0x14;
  M_MEM_VAL = 0x18;
  adapter->t1powersave = HCLOCK;
 } else {
  M_CORE_VAL = 0xe;
  M_MEM_VAL = 0x10;
  adapter->t1powersave = LCLOCK;
 }


 spin_lock(&adapter->tpi_lock);


 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val |= NP_LOAD;
 udelay(50);
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(50);
 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val &= ~S_LOAD_CORE;
 val &= ~S_CLOCK;
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(50);


 bit_bang(adapter, T_CORE_VAL, T_CORE_BITS);
 bit_bang(adapter, N_CORE_VAL, N_CORE_BITS);
 bit_bang(adapter, M_CORE_VAL, M_CORE_BITS);
 udelay(50);


 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val |= S_LOAD_CORE;
 udelay(50);
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(50);
 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val &= ~S_LOAD_CORE;
 udelay(50);
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(50);


 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val |= NP_LOAD;
 udelay(50);
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(50);
 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val &= ~S_LOAD_MEM;
 val &= ~S_CLOCK;
 udelay(50);
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(50);


 bit_bang(adapter, T_MEM_VAL, T_MEM_BITS);
 bit_bang(adapter, N_MEM_VAL, N_MEM_BITS);
 bit_bang(adapter, M_MEM_VAL, M_MEM_BITS);
 udelay(50);


 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val |= S_LOAD_MEM;
 udelay(50);
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);
 udelay(50);
 __t1_tpi_read(adapter, A_ELMER0_GPO, &val);
 val &= ~S_LOAD_MEM;
 udelay(50);
 __t1_tpi_write(adapter, A_ELMER0_GPO, val);

 spin_unlock(&adapter->tpi_lock);

 return 0;
}
