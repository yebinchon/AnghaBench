
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct octeon_ioq_vector {int iq_index; int droq_index; int ioq_num; int affinity_mask; int mbox; struct octeon_device* oct_dev; } ;
struct TYPE_2__ {int pf_srn; } ;
struct octeon_device {scalar_t__ chip_id; TYPE_1__ sriov_info; int * mbox; struct octeon_ioq_vector* ioq_vector; } ;


 scalar_t__ OCTEON_CN23XX_PF_VID ;
 int cpumask_set_cpu (int,int *) ;
 int num_online_cpus () ;
 struct octeon_ioq_vector* vzalloc (int) ;

int
octeon_allocate_ioq_vector(struct octeon_device *oct, u32 num_ioqs)
{
 struct octeon_ioq_vector *ioq_vector;
 int cpu_num;
 int size;
 int i;

 size = sizeof(struct octeon_ioq_vector) * num_ioqs;

 oct->ioq_vector = vzalloc(size);
 if (!oct->ioq_vector)
  return -1;
 for (i = 0; i < num_ioqs; i++) {
  ioq_vector = &oct->ioq_vector[i];
  ioq_vector->oct_dev = oct;
  ioq_vector->iq_index = i;
  ioq_vector->droq_index = i;
  ioq_vector->mbox = oct->mbox[i];

  cpu_num = i % num_online_cpus();
  cpumask_set_cpu(cpu_num, &ioq_vector->affinity_mask);

  if (oct->chip_id == OCTEON_CN23XX_PF_VID)
   ioq_vector->ioq_num = i + oct->sriov_info.pf_srn;
  else
   ioq_vector->ioq_num = i;
 }

 return 0;
}
