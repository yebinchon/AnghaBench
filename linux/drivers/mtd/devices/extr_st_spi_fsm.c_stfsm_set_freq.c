
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stfsm {int fifo_dir_delay; scalar_t__ base; int dev; int clk; } ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ SPI_CLOCKDIV ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void stfsm_set_freq(struct stfsm *fsm, uint32_t spi_freq)
{
 uint32_t emi_freq;
 uint32_t clk_div;

 emi_freq = clk_get_rate(fsm->clk);





 clk_div = 2 * DIV_ROUND_UP(emi_freq, 2 * spi_freq);
 if (clk_div < 2)
  clk_div = 2;
 else if (clk_div > 128)
  clk_div = 128;







 if (clk_div <= 4)
  fsm->fifo_dir_delay = 0;
 else if (clk_div <= 10)
  fsm->fifo_dir_delay = 1;
 else
  fsm->fifo_dir_delay = DIV_ROUND_UP(clk_div, 10);

 dev_dbg(fsm->dev, "emi_clk = %uHZ, spi_freq = %uHZ, clk_div = %u\n",
  emi_freq, spi_freq, clk_div);

 writel(clk_div, fsm->base + SPI_CLOCKDIV);
}
