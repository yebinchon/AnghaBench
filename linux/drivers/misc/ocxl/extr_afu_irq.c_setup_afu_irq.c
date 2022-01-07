
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_context {int dummy; } ;
struct afu_irq {int virq; int * name; int hw_irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int afu_irq_handler ;
 int irq_create_mapping (int *,int ) ;
 int irq_dispose_mapping (int ) ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,...) ;
 int request_irq (int ,int ,int ,int *,struct afu_irq*) ;

__attribute__((used)) static int setup_afu_irq(struct ocxl_context *ctx, struct afu_irq *irq)
{
 int rc;

 irq->virq = irq_create_mapping(((void*)0), irq->hw_irq);
 if (!irq->virq) {
  pr_err("irq_create_mapping failed\n");
  return -ENOMEM;
 }
 pr_debug("hw_irq %d mapped to virq %u\n", irq->hw_irq, irq->virq);

 irq->name = kasprintf(GFP_KERNEL, "ocxl-afu-%u", irq->virq);
 if (!irq->name) {
  irq_dispose_mapping(irq->virq);
  return -ENOMEM;
 }

 rc = request_irq(irq->virq, afu_irq_handler, 0, irq->name, irq);
 if (rc) {
  kfree(irq->name);
  irq->name = ((void*)0);
  irq_dispose_mapping(irq->virq);
  pr_err("request_irq failed: %d\n", rc);
  return rc;
 }
 return 0;
}
