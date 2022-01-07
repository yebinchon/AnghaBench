
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_veu_file {TYPE_1__* veu_dev; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct sh_veu_file* private_data; } ;
typedef int __poll_t ;
struct TYPE_2__ {int m2m_ctx; } ;


 int v4l2_m2m_poll (struct file*,int ,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t sh_veu_poll(struct file *file,
    struct poll_table_struct *wait)
{
 struct sh_veu_file *veu_file = file->private_data;

 return v4l2_m2m_poll(file, veu_file->veu_dev->m2m_ctx, wait);
}
