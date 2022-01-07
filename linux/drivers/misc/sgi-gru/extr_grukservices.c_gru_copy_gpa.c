
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_NUM_KERNEL_DSR_BYTES ;
 int GRU_NUM_KERNEL_DSR_CL ;
 int IMA ;
 int MQE_BUG_NO_RESOURCES ;
 int STAT (int ) ;
 int XTYPE_B ;
 int copy_gpa ;
 int gru_bcopy (void*,unsigned long,unsigned long,int ,int ,unsigned int,int ,int ) ;
 int gru_free_cpu_resources (void*,void*) ;
 scalar_t__ gru_get_cpu_resources (int ,void**,void**) ;
 int gru_get_tri (void*) ;
 int gru_wait (void*) ;

int gru_copy_gpa(unsigned long dest_gpa, unsigned long src_gpa,
    unsigned int bytes)
{
 void *cb;
 void *dsr;
 int ret;

 STAT(copy_gpa);
 if (gru_get_cpu_resources(GRU_NUM_KERNEL_DSR_BYTES, &cb, &dsr))
  return MQE_BUG_NO_RESOURCES;
 gru_bcopy(cb, src_gpa, dest_gpa, gru_get_tri(dsr),
    XTYPE_B, bytes, GRU_NUM_KERNEL_DSR_CL, IMA);
 ret = gru_wait(cb);
 gru_free_cpu_resources(cb, dsr);
 return ret;
}
