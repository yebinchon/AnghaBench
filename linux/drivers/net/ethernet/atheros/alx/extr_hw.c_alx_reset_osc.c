
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct alx_hw {int dummy; } ;


 int ALX_MISC ;
 int ALX_MISC3 ;
 int ALX_MISC3_25M_BY_SW ;
 int ALX_MISC3_25M_NOTO_INTNL ;
 int ALX_MISC_INTNLOSC_OPEN ;
 int ALX_MISC_ISO_EN ;
 int ALX_MISC_PSW_OCP ;
 int ALX_MISC_PSW_OCP_DEF ;
 int ALX_MSIC2 ;
 int ALX_MSIC2_CALB_START ;
 scalar_t__ ALX_REV_B0 ;
 int ALX_SET_FIELD (int,int ,int ) ;
 scalar_t__ alx_is_rev_a (scalar_t__) ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void alx_reset_osc(struct alx_hw *hw, u8 rev)
{
 u32 val, val2;


 val = alx_read_mem32(hw, ALX_MISC3);
 alx_write_mem32(hw, ALX_MISC3,
   (val & ~ALX_MISC3_25M_BY_SW) |
   ALX_MISC3_25M_NOTO_INTNL);




 val = alx_read_mem32(hw, ALX_MISC);
 if (rev >= ALX_REV_B0) {



  ALX_SET_FIELD(val, ALX_MISC_PSW_OCP, ALX_MISC_PSW_OCP_DEF);

  val &= ~ALX_MISC_INTNLOSC_OPEN;
  alx_write_mem32(hw, ALX_MISC, val);
  alx_write_mem32(hw, ALX_MISC, val | ALX_MISC_INTNLOSC_OPEN);

  val2 = alx_read_mem32(hw, ALX_MSIC2);
  val2 &= ~ALX_MSIC2_CALB_START;
  alx_write_mem32(hw, ALX_MSIC2, val2);
  alx_write_mem32(hw, ALX_MSIC2, val2 | ALX_MSIC2_CALB_START);
 } else {
  val &= ~ALX_MISC_INTNLOSC_OPEN;

  if (alx_is_rev_a(rev))
   val &= ~ALX_MISC_ISO_EN;

  alx_write_mem32(hw, ALX_MISC, val | ALX_MISC_INTNLOSC_OPEN);
  alx_write_mem32(hw, ALX_MISC, val);
 }

 udelay(20);
}
