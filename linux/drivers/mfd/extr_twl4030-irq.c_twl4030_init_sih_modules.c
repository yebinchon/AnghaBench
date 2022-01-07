
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sih {unsigned int irq_lines; int bytes_ixr; TYPE_1__* mask; int module; scalar_t__ set_cor; int name; int control_offset; } ;
typedef int buf ;
struct TYPE_2__ {int isr_offset; int imr_offset; } ;


 int EINVAL ;
 int TWL4030_SIH_CTRL_COR_MASK ;
 unsigned int irq_line ;
 int memset (int *,int,int) ;
 int nr_sih_modules ;
 int pr_err (char*,int,int ,char*) ;
 int pr_warn (char*,int,...) ;
 struct sih* sih_modules ;
 int twl_i2c_read (int ,int *,int ,int ) ;
 int twl_i2c_write (int ,int *,int ,int ) ;
 int twl_i2c_write_u8 (int ,int ,int ) ;

__attribute__((used)) static int twl4030_init_sih_modules(unsigned line)
{
 const struct sih *sih;
 u8 buf[4];
 int i;
 int status;


 if (line > 1)
  return -EINVAL;

 irq_line = line;


 memset(buf, 0xff, sizeof(buf));
 sih = sih_modules;
 for (i = 0; i < nr_sih_modules; i++, sih++) {

  if (!sih->bytes_ixr)
   continue;


  if (sih->irq_lines <= line)
   continue;

  status = twl_i2c_write(sih->module, buf,
    sih->mask[line].imr_offset, sih->bytes_ixr);
  if (status < 0)
   pr_err("twl4030: err %d initializing %s %s\n",
     status, sih->name, "IMR");
  if (sih->set_cor) {
   status = twl_i2c_write_u8(sih->module,
     TWL4030_SIH_CTRL_COR_MASK,
     sih->control_offset);
   if (status < 0)
    pr_err("twl4030: err %d initializing %s %s\n",
      status, sih->name, "SIH_CTRL");
  }
 }

 sih = sih_modules;
 for (i = 0; i < nr_sih_modules; i++, sih++) {
  u8 rxbuf[4];
  int j;


  if (!sih->bytes_ixr)
   continue;


  if (sih->irq_lines <= line)
   continue;







  for (j = 0; j < 2; j++) {
   status = twl_i2c_read(sih->module, rxbuf,
    sih->mask[line].isr_offset, sih->bytes_ixr);
   if (status < 0)
    pr_warn("twl4030: err %d initializing %s %s\n",
     status, sih->name, "ISR");

   if (!sih->set_cor) {
    status = twl_i2c_write(sih->module, buf,
     sih->mask[line].isr_offset,
     sih->bytes_ixr);
    if (status < 0)
     pr_warn("twl4030: write failed: %d\n",
      status);
   }




  }
 }

 return 0;
}
