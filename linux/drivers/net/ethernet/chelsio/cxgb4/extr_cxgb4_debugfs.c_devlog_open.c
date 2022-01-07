
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {struct adapter* i_private; } ;
struct fw_devlog_e {scalar_t__ timestamp; int seqno; } ;
struct file {int dummy; } ;
struct devlog_params {scalar_t__ start; int size; int memtype; } ;
struct devlog_info {int nentries; unsigned int first; struct fw_devlog_e* log; } ;
struct TYPE_2__ {int drv_memwin; struct devlog_params devlog; } ;
struct adapter {int win0_lock; TYPE_1__ params; } ;
typedef int __u32 ;
typedef int __be32 ;


 int ENOMEM ;
 int ENXIO ;
 int T4_MEMORY_READ ;
 struct devlog_info* __seq_open_private (struct file*,int *,int) ;
 int be32_to_cpu (int ) ;
 int devlog_seq_ops ;
 int seq_release_private (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_memory_rw (struct adapter*,int ,int ,scalar_t__,int,int *,int ) ;

__attribute__((used)) static int devlog_open(struct inode *inode, struct file *file)
{
 struct adapter *adap = inode->i_private;
 struct devlog_params *dparams = &adap->params.devlog;
 struct devlog_info *dinfo;
 unsigned int index;
 u32 fseqno;
 int ret;



 if (dparams->start == 0)
  return -ENXIO;




 dinfo = __seq_open_private(file, &devlog_seq_ops,
       sizeof(*dinfo) + dparams->size);
 if (!dinfo)
  return -ENOMEM;



 dinfo->nentries = (dparams->size / sizeof(struct fw_devlog_e));
 dinfo->first = 0;
 spin_lock(&adap->win0_lock);
 ret = t4_memory_rw(adap, adap->params.drv_memwin, dparams->memtype,
      dparams->start, dparams->size, (__be32 *)dinfo->log,
      T4_MEMORY_READ);
 spin_unlock(&adap->win0_lock);
 if (ret) {
  seq_release_private(inode, file);
  return ret;
 }




 for (fseqno = ~((u32)0), index = 0; index < dinfo->nentries; index++) {
  struct fw_devlog_e *e = &dinfo->log[index];
  __u32 seqno;

  if (e->timestamp == 0)
   continue;

  seqno = be32_to_cpu(e->seqno);
  if (seqno < fseqno) {
   fseqno = seqno;
   dinfo->first = index;
  }
 }
 return 0;
}
