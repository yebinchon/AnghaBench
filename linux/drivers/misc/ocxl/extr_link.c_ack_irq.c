
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int dar; int dsisr; int pe; } ;
struct spa {int reg_tfc; TYPE_1__ xsl_fault; int spa_mem; } ;
typedef enum xsl_response { ____Placeholder_xsl_response } xsl_response ;


 int ADDRESS_ERROR ;
 scalar_t__ PPC_BIT (int) ;
 int RESTART ;
 int WARN (int,char*,int) ;
 int out_be64 (int ,scalar_t__) ;
 int trace_ocxl_fault_ack (int ,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void ack_irq(struct spa *spa, enum xsl_response r)
{
 u64 reg = 0;


 if (r == RESTART)
  reg = PPC_BIT(31);
 else if (r == ADDRESS_ERROR)
  reg = PPC_BIT(30);
 else
  WARN(1, "Invalid irq response %d\n", r);

 if (reg) {
  trace_ocxl_fault_ack(spa->spa_mem, spa->xsl_fault.pe,
    spa->xsl_fault.dsisr, spa->xsl_fault.dar, reg);
  out_be64(spa->reg_tfc, reg);
 }
}
