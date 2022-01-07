
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpu_run {int signaled; int fw_ver; int wq; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mtk_vpu {int fw_loaded; int vpu_mutex; int dev; struct vpu_run run; } ;


 int D_FW ;
 int EINVAL ;
 int ERESTARTSYS ;
 int ETIME ;
 int INIT_TIMEOUT_MS ;
 int P_FW ;
 int VPU_D_FW ;
 int VPU_P_FW ;
 int VPU_RESET ;
 int dev_dbg (int ,char*) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ) ;
 int load_requested_vpu (struct mtk_vpu*,int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mtk_vpu* platform_get_drvdata (struct platform_device*) ;
 int vpu_cfg_writel (struct mtk_vpu*,int,int ) ;
 int vpu_clock_disable (struct mtk_vpu*) ;
 int vpu_clock_enable (struct mtk_vpu*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int vpu_load_firmware(struct platform_device *pdev)
{
 struct mtk_vpu *vpu;
 struct device *dev = &pdev->dev;
 struct vpu_run *run;
 int ret;

 if (!pdev) {
  dev_err(dev, "VPU platform device is invalid\n");
  return -EINVAL;
 }

 vpu = platform_get_drvdata(pdev);
 run = &vpu->run;

 mutex_lock(&vpu->vpu_mutex);
 if (vpu->fw_loaded) {
  mutex_unlock(&vpu->vpu_mutex);
  return 0;
 }
 mutex_unlock(&vpu->vpu_mutex);

 ret = vpu_clock_enable(vpu);
 if (ret) {
  dev_err(dev, "enable clock failed %d\n", ret);
  return ret;
 }

 mutex_lock(&vpu->vpu_mutex);

 run->signaled = 0;
 dev_dbg(vpu->dev, "firmware request\n");

 ret = load_requested_vpu(vpu, P_FW);
 if (ret < 0) {
  dev_err(dev, "Failed to request %s, %d\n", VPU_P_FW, ret);
  goto OUT_LOAD_FW;
 }


 ret = load_requested_vpu(vpu, D_FW);
 if (ret < 0) {
  dev_err(dev, "Failed to request %s, %d\n", VPU_D_FW, ret);
  goto OUT_LOAD_FW;
 }

 vpu->fw_loaded = 1;

 vpu_cfg_writel(vpu, 0x1, VPU_RESET);

 ret = wait_event_interruptible_timeout(run->wq,
            run->signaled,
            msecs_to_jiffies(INIT_TIMEOUT_MS)
            );
 if (ret == 0) {
  ret = -ETIME;
  dev_err(dev, "wait vpu initialization timeout!\n");
  goto OUT_LOAD_FW;
 } else if (-ERESTARTSYS == ret) {
  dev_err(dev, "wait vpu interrupted by a signal!\n");
  goto OUT_LOAD_FW;
 }

 ret = 0;
 dev_info(dev, "vpu is ready. Fw version %s\n", run->fw_ver);

OUT_LOAD_FW:
 mutex_unlock(&vpu->vpu_mutex);
 vpu_clock_disable(vpu);

 return ret;
}
