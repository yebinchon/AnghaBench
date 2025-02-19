
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct s5k6aa {int mclk_frequency; int pclk_fmin; int pclk_fmax; int clk_fop; int sd; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 unsigned long MAX_MCLK_FREQ_KHZ ;
 unsigned long MIN_MCLK_FREQ_KHZ ;
 int PCLK_FREQ_MAX ;
 int PCLK_FREQ_MIN ;
 int REG_I_ERROR_INFO ;
 int REG_I_INCLK_FREQ_H ;
 int REG_I_INCLK_FREQ_L ;
 int REG_I_INIT_PARAMS_UPDATED ;
 int REG_I_MAX_OUTRATE_4KHZ (int ) ;
 int REG_I_MIN_OUTRATE_4KHZ (int ) ;
 int REG_I_OPCLK_4KHZ (int ) ;
 int REG_I_USE_NPVI_CLOCKS ;
 int SYS_PLL_OUT_FREQ ;
 scalar_t__ WARN (int,char*,unsigned long) ;
 int s5k6aa_read (struct i2c_client*,int ,scalar_t__*) ;
 int s5k6aa_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int s5k6aa_configure_pixel_clocks(struct s5k6aa *s5k6aa)
{
 struct i2c_client *c = v4l2_get_subdevdata(&s5k6aa->sd);
 unsigned long fmclk = s5k6aa->mclk_frequency / 1000;
 u16 status;
 int ret;

 if (WARN(fmclk < MIN_MCLK_FREQ_KHZ || fmclk > MAX_MCLK_FREQ_KHZ,
   "Invalid clock frequency: %ld\n", fmclk))
  return -EINVAL;

 s5k6aa->pclk_fmin = PCLK_FREQ_MIN;
 s5k6aa->pclk_fmax = PCLK_FREQ_MAX;
 s5k6aa->clk_fop = SYS_PLL_OUT_FREQ;


 ret = s5k6aa_write(c, REG_I_INCLK_FREQ_H, fmclk >> 16);
 if (!ret)
  ret = s5k6aa_write(c, REG_I_INCLK_FREQ_L, fmclk & 0xFFFF);
 if (!ret)
  ret = s5k6aa_write(c, REG_I_USE_NPVI_CLOCKS, 1);

 if (!ret)
  ret = s5k6aa_write(c, REG_I_OPCLK_4KHZ(0), s5k6aa->clk_fop);
 if (!ret)
  ret = s5k6aa_write(c, REG_I_MIN_OUTRATE_4KHZ(0),
       s5k6aa->pclk_fmin);
 if (!ret)
  ret = s5k6aa_write(c, REG_I_MAX_OUTRATE_4KHZ(0),
       s5k6aa->pclk_fmax);
 if (!ret)
  ret = s5k6aa_write(c, REG_I_INIT_PARAMS_UPDATED, 1);
 if (!ret)
  ret = s5k6aa_read(c, REG_I_ERROR_INFO, &status);

 return ret ? ret : (status ? -EINVAL : 0);
}
