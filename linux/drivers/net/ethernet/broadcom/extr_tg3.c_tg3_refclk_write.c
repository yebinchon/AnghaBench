
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tg3 {int dummy; } ;


 int TG3_EAV_REF_CLCK_CTL ;
 int TG3_EAV_REF_CLCK_CTL_RESUME ;
 int TG3_EAV_REF_CLCK_CTL_STOP ;
 int TG3_EAV_REF_CLCK_LSB ;
 int TG3_EAV_REF_CLCK_MSB ;
 int tr32 (int ) ;
 int tw32 (int ,int) ;
 int tw32_f (int ,int) ;

__attribute__((used)) static void tg3_refclk_write(struct tg3 *tp, u64 newval)
{
 u32 clock_ctl = tr32(TG3_EAV_REF_CLCK_CTL);

 tw32(TG3_EAV_REF_CLCK_CTL, clock_ctl | TG3_EAV_REF_CLCK_CTL_STOP);
 tw32(TG3_EAV_REF_CLCK_LSB, newval & 0xffffffff);
 tw32(TG3_EAV_REF_CLCK_MSB, newval >> 32);
 tw32_f(TG3_EAV_REF_CLCK_CTL, clock_ctl | TG3_EAV_REF_CLCK_CTL_RESUME);
}
