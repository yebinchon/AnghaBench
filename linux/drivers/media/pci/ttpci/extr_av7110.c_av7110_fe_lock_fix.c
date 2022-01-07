
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int fe_status; int fe_synced; int pid_mutex; int * pids; scalar_t__ playing; } ;
typedef enum fe_status { ____Placeholder_fe_status } fe_status ;


 int COMTYPE_PIDFILTER ;
 int COMTYPE_PID_FILTER ;
 size_t DMX_PES_AUDIO ;
 size_t DMX_PES_PCR ;
 size_t DMX_PES_TELETEXT ;
 size_t DMX_PES_VIDEO ;
 int ERESTARTSYS ;
 int FE_HAS_LOCK ;
 int FlushTSQueue ;
 int GPMQBusy ;
 int Scan ;
 int SetPIDs (struct av7110*,int ,int ,int ,int ,int ) ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int ) ;
 int av7110_wait_msgstate (struct av7110*,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int av7110_fe_lock_fix(struct av7110 *av7110, enum fe_status status)
{
 int ret = 0;
 int synced = (status & FE_HAS_LOCK) ? 1 : 0;

 av7110->fe_status = status;

 if (av7110->fe_synced == synced)
  return 0;

 if (av7110->playing) {
  av7110->fe_synced = synced;
  return 0;
 }

 if (mutex_lock_interruptible(&av7110->pid_mutex))
  return -ERESTARTSYS;

 if (synced) {
  ret = SetPIDs(av7110, av7110->pids[DMX_PES_VIDEO],
   av7110->pids[DMX_PES_AUDIO],
   av7110->pids[DMX_PES_TELETEXT], 0,
   av7110->pids[DMX_PES_PCR]);
  if (!ret)
   ret = av7110_fw_cmd(av7110, COMTYPE_PIDFILTER, Scan, 0);
 } else {
  ret = SetPIDs(av7110, 0, 0, 0, 0, 0);
  if (!ret) {
   ret = av7110_fw_cmd(av7110, COMTYPE_PID_FILTER, FlushTSQueue, 0);
   if (!ret)
    ret = av7110_wait_msgstate(av7110, GPMQBusy);
  }
 }

 if (!ret)
  av7110->fe_synced = synced;

 mutex_unlock(&av7110->pid_mutex);
 return ret;
}
