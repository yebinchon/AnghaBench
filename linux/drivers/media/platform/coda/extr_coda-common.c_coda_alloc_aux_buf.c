
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct coda_dev {int dev; int v4l2_dev; } ;
struct TYPE_2__ {size_t size; scalar_t__ data; } ;
struct coda_aux_buf {size_t size; int dentry; TYPE_1__ blob; scalar_t__ vaddr; int paddr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int debugfs_create_blob (char const*,int,struct dentry*,TYPE_1__*) ;
 int dev_warn (int ,char*,char const*) ;
 scalar_t__ dma_alloc_coherent (int ,size_t,int *,int ) ;
 int v4l2_err (int *,char*,char const*,size_t) ;

int coda_alloc_aux_buf(struct coda_dev *dev, struct coda_aux_buf *buf,
         size_t size, const char *name, struct dentry *parent)
{
 buf->vaddr = dma_alloc_coherent(dev->dev, size, &buf->paddr,
     GFP_KERNEL);
 if (!buf->vaddr) {
  v4l2_err(&dev->v4l2_dev,
    "Failed to allocate %s buffer of size %zu\n",
    name, size);
  return -ENOMEM;
 }

 buf->size = size;

 if (name && parent) {
  buf->blob.data = buf->vaddr;
  buf->blob.size = size;
  buf->dentry = debugfs_create_blob(name, 0644, parent,
        &buf->blob);
  if (!buf->dentry)
   dev_warn(dev->dev,
     "failed to create debugfs entry %s\n", name);
 }

 return 0;
}
