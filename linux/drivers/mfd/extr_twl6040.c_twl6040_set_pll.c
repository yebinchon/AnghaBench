
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040 {int pll; unsigned int sysclk_rate; unsigned int mclk_rate; int mutex; int dev; int mclk; } ;


 int EINVAL ;
 int TWL6040_HPLLBP ;
 int TWL6040_HPLLENA ;
 int TWL6040_HPLLSEL ;
 int TWL6040_HPLLSQRENA ;
 int TWL6040_LPLLENA ;
 int TWL6040_LPLLFIN ;
 int TWL6040_MCLK_12000KHZ ;
 int TWL6040_MCLK_19200KHZ ;
 int TWL6040_MCLK_26000KHZ ;
 int TWL6040_MCLK_38400KHZ ;
 int TWL6040_MCLK_MSK ;
 int TWL6040_REG_HPPLLCTL ;
 int TWL6040_REG_LPPLLCTL ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int twl6040_reg_read (struct twl6040*,int ) ;
 int twl6040_reg_write (struct twl6040*,int ,int) ;
 int usleep_range (int,int) ;

int twl6040_set_pll(struct twl6040 *twl6040, int pll_id,
      unsigned int freq_in, unsigned int freq_out)
{
 u8 hppllctl, lppllctl;
 int ret = 0;

 mutex_lock(&twl6040->mutex);

 hppllctl = twl6040_reg_read(twl6040, TWL6040_REG_HPPLLCTL);
 lppllctl = twl6040_reg_read(twl6040, TWL6040_REG_LPPLLCTL);


 if (pll_id != twl6040->pll) {
  twl6040->sysclk_rate = 0;
  twl6040->mclk_rate = 0;
 }

 switch (pll_id) {
 case 128:


  if (twl6040->sysclk_rate != freq_out) {
   switch (freq_out) {
   case 17640000:
    lppllctl |= TWL6040_LPLLFIN;
    break;
   case 19200000:
    lppllctl &= ~TWL6040_LPLLFIN;
    break;
   default:
    dev_err(twl6040->dev,
     "freq_out %d not supported\n",
     freq_out);
    ret = -EINVAL;
    goto pll_out;
   }
   twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL,
       lppllctl);
  }


  if (twl6040->pll == pll_id)
   break;

  switch (freq_in) {
  case 32768:
   lppllctl |= TWL6040_LPLLENA;
   twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL,
       lppllctl);
   mdelay(5);
   lppllctl &= ~TWL6040_HPLLSEL;
   twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL,
       lppllctl);
   hppllctl &= ~TWL6040_HPLLENA;
   twl6040_reg_write(twl6040, TWL6040_REG_HPPLLCTL,
       hppllctl);
   break;
  default:
   dev_err(twl6040->dev,
    "freq_in %d not supported\n", freq_in);
   ret = -EINVAL;
   goto pll_out;
  }

  clk_disable_unprepare(twl6040->mclk);
  break;
 case 129:

  if (freq_out != 19200000) {
   dev_err(twl6040->dev,
    "freq_out %d not supported\n", freq_out);
   ret = -EINVAL;
   goto pll_out;
  }

  if (twl6040->mclk_rate != freq_in) {
   hppllctl &= ~TWL6040_MCLK_MSK;

   switch (freq_in) {
   case 12000000:

    hppllctl |= TWL6040_MCLK_12000KHZ |
         TWL6040_HPLLENA;
    break;
   case 19200000:

    hppllctl |= TWL6040_MCLK_19200KHZ |
         TWL6040_HPLLBP | TWL6040_HPLLENA;
    break;
   case 26000000:

    hppllctl |= TWL6040_MCLK_26000KHZ |
         TWL6040_HPLLENA;
    break;
   case 38400000:

    hppllctl |= TWL6040_MCLK_38400KHZ |
         TWL6040_HPLLBP | TWL6040_HPLLENA;
    break;
   default:
    dev_err(twl6040->dev,
     "freq_in %d not supported\n", freq_in);
    ret = -EINVAL;
    goto pll_out;
   }


   if (pll_id != twl6040->pll)
    clk_prepare_enable(twl6040->mclk);




   hppllctl |= TWL6040_HPLLSQRENA;

   twl6040_reg_write(twl6040, TWL6040_REG_HPPLLCTL,
       hppllctl);
   usleep_range(500, 700);
   lppllctl |= TWL6040_HPLLSEL;
   twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL,
       lppllctl);
   lppllctl &= ~TWL6040_LPLLENA;
   twl6040_reg_write(twl6040, TWL6040_REG_LPPLLCTL,
       lppllctl);

   twl6040->mclk_rate = freq_in;
  }
  break;
 default:
  dev_err(twl6040->dev, "unknown pll id %d\n", pll_id);
  ret = -EINVAL;
  goto pll_out;
 }

 twl6040->sysclk_rate = freq_out;
 twl6040->pll = pll_id;

pll_out:
 mutex_unlock(&twl6040->mutex);
 return ret;
}
