
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; int data; } ;
struct mei_cl_cb {TYPE_1__ buf; } ;
struct mei_cl {int dummy; } ;
struct file {int dummy; } ;
typedef enum mei_cb_file_ops { ____Placeholder_mei_cb_file_ops } mei_cb_file_ops ;


 int GFP_KERNEL ;
 int MEI_SLOT_SIZE ;
 int kmalloc (int ,int ) ;
 int mei_io_cb_free (struct mei_cl_cb*) ;
 struct mei_cl_cb* mei_io_cb_init (struct mei_cl*,int,struct file const*) ;
 int roundup (size_t,int ) ;

struct mei_cl_cb *mei_cl_alloc_cb(struct mei_cl *cl, size_t length,
      enum mei_cb_file_ops fop_type,
      const struct file *fp)
{
 struct mei_cl_cb *cb;

 cb = mei_io_cb_init(cl, fop_type, fp);
 if (!cb)
  return ((void*)0);

 if (length == 0)
  return cb;

 cb->buf.data = kmalloc(roundup(length, MEI_SLOT_SIZE), GFP_KERNEL);
 if (!cb->buf.data) {
  mei_io_cb_free(cb);
  return ((void*)0);
 }
 cb->buf.size = length;

 return cb;
}
