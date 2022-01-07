
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct twl6030_irq {int * irq_mapping_tbl; int irq_domain; } ;
typedef int irqreturn_t ;
typedef int __le32 ;


 int IRQ_HANDLED ;
 int REG_INT_STS_A ;
 int TWL_MODULE_PIH ;
 int handle_nested_irq (int) ;
 int irq_find_mapping (int ,int ) ;
 int le32_to_cpu (int ) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*,int) ;
 int pr_warn (char*,...) ;
 int twl_i2c_read (int ,int*,int ,int) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static irqreturn_t twl6030_irq_thread(int irq, void *data)
{
 int i, ret;
 union {
  u8 bytes[4];
  __le32 int_sts;
 } sts;
 u32 int_sts;
 struct twl6030_irq *pdata = data;


 ret = twl_i2c_read(TWL_MODULE_PIH, sts.bytes, REG_INT_STS_A, 3);
 if (ret) {
  pr_warn("twl6030_irq: I2C error %d reading PIH ISR\n", ret);
  return IRQ_HANDLED;
 }

 sts.bytes[3] = 0;





 if (sts.bytes[2] & 0x10)
  sts.bytes[2] |= 0x08;

 int_sts = le32_to_cpu(sts.int_sts);
 for (i = 0; int_sts; int_sts >>= 1, i++)
  if (int_sts & 0x1) {
   int module_irq =
    irq_find_mapping(pdata->irq_domain,
       pdata->irq_mapping_tbl[i]);
   if (module_irq)
    handle_nested_irq(module_irq);
   else
    pr_err("twl6030_irq: Unmapped PIH ISR %u detected\n",
           i);
   pr_debug("twl6030_irq: PIH ISR %u, virq%u\n",
     i, module_irq);
  }
 ret = twl_i2c_write_u8(TWL_MODULE_PIH, 0x00, REG_INT_STS_A);
 if (ret)
  pr_warn("twl6030_irq: I2C error in clearing PIH ISR\n");

 return IRQ_HANDLED;
}
