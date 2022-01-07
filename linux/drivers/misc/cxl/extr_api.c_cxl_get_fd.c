
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_operations {int dummy; } ;
struct file {int f_mapping; } ;
struct cxl_context {int pe; scalar_t__ mapping; } ;


 int EEXIST ;
 struct file* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int PATCH_FOPS (int ) ;
 int afu_fops ;
 int compat_ioctl ;
 int cxl_context_set_mapping (struct cxl_context*,int ) ;
 struct file* cxl_getfile (char*,struct file_operations*,struct cxl_context*,int) ;
 int get_unused_fd_flags (int) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int mmap ;
 int open ;
 int poll ;
 int put_unused_fd (int) ;
 int read ;
 int release ;
 int unlocked_ioctl ;

struct file *cxl_get_fd(struct cxl_context *ctx, struct file_operations *fops,
   int *fd)
{
 struct file *file;
 int rc, flags, fdtmp;
 char *name = ((void*)0);


 if (ctx->mapping)
  return ERR_PTR(-EEXIST);

 flags = O_RDWR | O_CLOEXEC;


 rc = get_unused_fd_flags(flags);
 if (rc < 0)
  return ERR_PTR(rc);
 fdtmp = rc;




 if (fops) {
  PATCH_FOPS(open);
  PATCH_FOPS(poll);
  PATCH_FOPS(read);
  PATCH_FOPS(release);
  PATCH_FOPS(unlocked_ioctl);
  PATCH_FOPS(compat_ioctl);
  PATCH_FOPS(mmap);
 } else
  fops = (struct file_operations *)&afu_fops;

 name = kasprintf(GFP_KERNEL, "cxl:%d", ctx->pe);
 file = cxl_getfile(name, fops, ctx, flags);
 kfree(name);
 if (IS_ERR(file))
  goto err_fd;

 cxl_context_set_mapping(ctx, file->f_mapping);
 *fd = fdtmp;
 return file;

err_fd:
 put_unused_fd(fdtmp);
 return ((void*)0);
}
