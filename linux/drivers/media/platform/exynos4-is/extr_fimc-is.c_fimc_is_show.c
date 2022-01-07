
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct seq_file {struct fimc_is* private; } ;
struct TYPE_3__ {int * vaddr; } ;
struct fimc_is {TYPE_2__* pdev; TYPE_1__ memory; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int FIMC_IS_DEBUG_REGION_OFFSET ;
 int dev_err (int *,char*) ;
 int seq_printf (struct seq_file*,char*,int const*) ;

__attribute__((used)) static int fimc_is_show(struct seq_file *s, void *data)
{
 struct fimc_is *is = s->private;
 const u8 *buf = is->memory.vaddr + FIMC_IS_DEBUG_REGION_OFFSET;

 if (is->memory.vaddr == ((void*)0)) {
  dev_err(&is->pdev->dev, "firmware memory is not initialized\n");
  return -EIO;
 }

 seq_printf(s, "%s\n", buf);
 return 0;
}
