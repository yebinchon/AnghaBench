
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct octeon_device {scalar_t__ num_oqs; int ** droq; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 size_t CFG_GET_DEF_RX_BUF_SIZE (int ) ;
 size_t CFG_GET_NUM_DEF_RX_DESCS (int ) ;
 int CHIP_CONF (struct octeon_device*,int ) ;
 scalar_t__ OCTEON_CN23XX_PF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN23XX_VF (struct octeon_device*) ;
 scalar_t__ OCTEON_CN6XXX (struct octeon_device*) ;
 int cn23xx_pf ;
 int cn23xx_vf ;
 int cn6xxx ;
 int dev_to_node (int *) ;
 scalar_t__ octeon_init_droq (struct octeon_device*,size_t,size_t,size_t,int *) ;
 int vfree (int *) ;
 int * vzalloc (int) ;
 int * vzalloc_node (int,int) ;

int octeon_setup_output_queues(struct octeon_device *oct)
{
 u32 num_descs = 0;
 u32 desc_size = 0;
 u32 oq_no = 0;
 int numa_node = dev_to_node(&oct->pci_dev->dev);

 if (OCTEON_CN6XXX(oct)) {
  num_descs =
   CFG_GET_NUM_DEF_RX_DESCS(CHIP_CONF(oct, cn6xxx));
  desc_size =
   CFG_GET_DEF_RX_BUF_SIZE(CHIP_CONF(oct, cn6xxx));
 } else if (OCTEON_CN23XX_PF(oct)) {
  num_descs = CFG_GET_NUM_DEF_RX_DESCS(CHIP_CONF(oct, cn23xx_pf));
  desc_size = CFG_GET_DEF_RX_BUF_SIZE(CHIP_CONF(oct, cn23xx_pf));
 } else if (OCTEON_CN23XX_VF(oct)) {
  num_descs = CFG_GET_NUM_DEF_RX_DESCS(CHIP_CONF(oct, cn23xx_vf));
  desc_size = CFG_GET_DEF_RX_BUF_SIZE(CHIP_CONF(oct, cn23xx_vf));
 }
 oct->num_oqs = 0;
 oct->droq[0] = vzalloc_node(sizeof(*oct->droq[0]), numa_node);
 if (!oct->droq[0])
  oct->droq[0] = vzalloc(sizeof(*oct->droq[0]));
 if (!oct->droq[0])
  return 1;

 if (octeon_init_droq(oct, oq_no, num_descs, desc_size, ((void*)0))) {
  vfree(oct->droq[oq_no]);
  oct->droq[oq_no] = ((void*)0);
  return 1;
 }
 oct->num_oqs++;

 return 0;
}
