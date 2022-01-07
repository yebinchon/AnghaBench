
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpu_run {int enc_capability; int dec_capability; int fw_ver; int signaled; } ;
struct TYPE_2__ {int wq; int enc_capability; int dec_capability; int fw_ver; int signaled; } ;
struct mtk_vpu {TYPE_1__ run; } ;


 int strscpy (int ,int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void vpu_init_ipi_handler(void *data, unsigned int len, void *priv)
{
 struct mtk_vpu *vpu = (struct mtk_vpu *)priv;
 struct vpu_run *run = (struct vpu_run *)data;

 vpu->run.signaled = run->signaled;
 strscpy(vpu->run.fw_ver, run->fw_ver, sizeof(vpu->run.fw_ver));
 vpu->run.dec_capability = run->dec_capability;
 vpu->run.enc_capability = run->enc_capability;
 wake_up_interruptible(&vpu->run.wq);
}
