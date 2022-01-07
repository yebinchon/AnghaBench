
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct cxl_context* private_data; } ;
struct cxl_context {int dummy; } ;



struct cxl_context *cxl_fops_get_context(struct file *file)
{
 return file->private_data;
}
