
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct av7110 {int* pids; int pid_mutex; scalar_t__ fe_synced; } ;


 size_t DMX_PES_AUDIO ;
 size_t DMX_PES_PCR ;
 size_t DMX_PES_SUBTITLE ;
 size_t DMX_PES_TELETEXT ;
 size_t DMX_PES_VIDEO ;
 int ERESTARTSYS ;
 int SetPIDs (struct av7110*,int,int,int,int,int) ;
 int dprintk (int,char*,struct av7110*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int ChangePIDs(struct av7110 *av7110, u16 vpid, u16 apid, u16 ttpid,
  u16 subpid, u16 pcrpid)
{
 int ret = 0;
 dprintk(4, "%p\n", av7110);

 if (mutex_lock_interruptible(&av7110->pid_mutex))
  return -ERESTARTSYS;

 if (!(vpid & 0x8000))
  av7110->pids[DMX_PES_VIDEO] = vpid;
 if (!(apid & 0x8000))
  av7110->pids[DMX_PES_AUDIO] = apid;
 if (!(ttpid & 0x8000))
  av7110->pids[DMX_PES_TELETEXT] = ttpid;
 if (!(pcrpid & 0x8000))
  av7110->pids[DMX_PES_PCR] = pcrpid;

 av7110->pids[DMX_PES_SUBTITLE] = 0;

 if (av7110->fe_synced) {
  pcrpid = av7110->pids[DMX_PES_PCR];
  ret = SetPIDs(av7110, vpid, apid, ttpid, subpid, pcrpid);
 }

 mutex_unlock(&av7110->pid_mutex);
 return ret;
}
