
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_device {TYPE_1__** droq; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int pkts_credit_reg; int max_count; } ;


 int dev_dbg (int *,char*,int) ;
 int octeon_create_droq (struct octeon_device*,int,int,int,void*) ;
 int octeon_set_droq_pkt_op (struct octeon_device*,int,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static int octeon_setup_droq(struct octeon_device *oct, int q_no, int num_descs,
        int desc_size, void *app_ctx)
{
 int ret_val;

 dev_dbg(&oct->pci_dev->dev, "Creating Droq: %d\n", q_no);

 ret_val = octeon_create_droq(oct, q_no, num_descs, desc_size, app_ctx);
 if (ret_val < 0)
  return ret_val;

 if (ret_val == 1) {
  dev_dbg(&oct->pci_dev->dev, "Using default droq %d\n", q_no);
  return 0;
 }


 octeon_set_droq_pkt_op(oct, q_no, 1);




 writel(oct->droq[q_no]->max_count, oct->droq[q_no]->pkts_credit_reg);

 return ret_val;
}
