
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_cb {int fop_type; scalar_t__ buf_idx; struct mei_cl* cl; struct file const* fp; int list; } ;
struct mei_cl {int dummy; } ;
struct file {int dummy; } ;
typedef enum mei_cb_file_ops { ____Placeholder_mei_cb_file_ops } mei_cb_file_ops ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mei_cl_cb* kzalloc (int,int ) ;

__attribute__((used)) static struct mei_cl_cb *mei_io_cb_init(struct mei_cl *cl,
     enum mei_cb_file_ops type,
     const struct file *fp)
{
 struct mei_cl_cb *cb;

 cb = kzalloc(sizeof(struct mei_cl_cb), GFP_KERNEL);
 if (!cb)
  return ((void*)0);

 INIT_LIST_HEAD(&cb->list);
 cb->fp = fp;
 cb->cl = cl;
 cb->buf_idx = 0;
 cb->fop_type = type;
 return cb;
}
