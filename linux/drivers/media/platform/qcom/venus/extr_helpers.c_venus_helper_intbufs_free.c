
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;


 int intbufs_unset_buffers (struct venus_inst*) ;

int venus_helper_intbufs_free(struct venus_inst *inst)
{
 return intbufs_unset_buffers(inst);
}
