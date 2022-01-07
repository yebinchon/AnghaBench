
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_pwrseq_simple {struct gpio_descs* reset_gpios; } ;
struct gpio_descs {int ndescs; int info; int desc; } ;


 int GFP_KERNEL ;
 int IS_ERR (struct gpio_descs*) ;
 unsigned long* bitmap_alloc (int,int ) ;
 int bitmap_fill (unsigned long*,int) ;
 int bitmap_zero (unsigned long*,int) ;
 int gpiod_set_array_value_cansleep (int,int ,int ,unsigned long*) ;
 int kfree (unsigned long*) ;

__attribute__((used)) static void mmc_pwrseq_simple_set_gpios_value(struct mmc_pwrseq_simple *pwrseq,
           int value)
{
 struct gpio_descs *reset_gpios = pwrseq->reset_gpios;

 if (!IS_ERR(reset_gpios)) {
  unsigned long *values;
  int nvalues = reset_gpios->ndescs;

  values = bitmap_alloc(nvalues, GFP_KERNEL);
  if (!values)
   return;

  if (value)
   bitmap_fill(values, nvalues);
  else
   bitmap_zero(values, nvalues);

  gpiod_set_array_value_cansleep(nvalues, reset_gpios->desc,
            reset_gpios->info, values);

  kfree(values);
 }
}
