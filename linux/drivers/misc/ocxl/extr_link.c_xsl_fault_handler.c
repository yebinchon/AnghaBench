
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pe_data {TYPE_3__* mm; } ;
struct TYPE_5__ {int fault_work; struct pe_data pe_data; scalar_t__ dsisr; scalar_t__ dar; scalar_t__ pe; } ;
struct spa {TYPE_2__ xsl_fault; int pe_tree; struct ocxl_process_element* spa_mem; } ;
struct ocxl_process_element {int pid; } ;
struct ocxl_link {struct spa* spa; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_6__ {TYPE_1__ context; } ;


 int ADDRESS_ERROR ;
 int IRQ_HANDLED ;
 scalar_t__ SPA_PE_MASK ;
 scalar_t__ SPA_XSL_TF ;
 int WARN (int,char*,scalar_t__) ;
 int WARN_ON (int) ;
 int ack_irq (struct spa*,int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ mmget_not_zero (TYPE_3__*) ;
 int pr_debug (char*) ;
 int pr_warn (char*) ;
 struct pe_data* radix_tree_lookup (int *,scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_irq (struct spa*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int schedule_work (int *) ;
 int trace_ocxl_fault (struct ocxl_process_element*,scalar_t__,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static irqreturn_t xsl_fault_handler(int irq, void *data)
{
 struct ocxl_link *link = (struct ocxl_link *) data;
 struct spa *spa = link->spa;
 u64 dsisr, dar, pe_handle;
 struct pe_data *pe_data;
 struct ocxl_process_element *pe;
 int pid;
 bool schedule = 0;

 read_irq(spa, &dsisr, &dar, &pe_handle);
 trace_ocxl_fault(spa->spa_mem, pe_handle, dsisr, dar, -1);

 WARN_ON(pe_handle > SPA_PE_MASK);
 pe = spa->spa_mem + pe_handle;
 pid = be32_to_cpu(pe->pid);







 if (!(dsisr & SPA_XSL_TF)) {
  WARN(1, "Invalid xsl interrupt fault register %#llx\n", dsisr);
  ack_irq(spa, ADDRESS_ERROR);
  return IRQ_HANDLED;
 }

 rcu_read_lock();
 pe_data = radix_tree_lookup(&spa->pe_tree, pe_handle);
 if (!pe_data) {
  rcu_read_unlock();
  pr_debug("Unknown mm context for xsl interrupt\n");
  ack_irq(spa, ADDRESS_ERROR);
  return IRQ_HANDLED;
 }

 if (!pe_data->mm) {




  rcu_read_unlock();
  pr_warn("Unresolved OpenCAPI xsl fault in kernel context\n");
  ack_irq(spa, ADDRESS_ERROR);
  return IRQ_HANDLED;
 }
 WARN_ON(pe_data->mm->context.id != pid);

 if (mmget_not_zero(pe_data->mm)) {
   spa->xsl_fault.pe = pe_handle;
   spa->xsl_fault.dar = dar;
   spa->xsl_fault.dsisr = dsisr;
   spa->xsl_fault.pe_data = *pe_data;
   schedule = 1;

 }
 rcu_read_unlock();
 if (schedule)
  schedule_work(&spa->xsl_fault.fault_work);
 else
  ack_irq(spa, ADDRESS_ERROR);
 return IRQ_HANDLED;
}
