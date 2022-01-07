
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {scalar_t__ type; int* jpeg_qp; int jpeg_qp_lock; } ;


 scalar_t__ SOLO_DEV_6010 ;
 scalar_t__ SOLO_DEV_6110 ;
 int SOLO_JPEG_EXT_ADDR (struct solo_dev*) ;
 int SOLO_JPEG_EXT_SIZE (struct solo_dev*) ;
 int SOLO_QP_INIT ;
 int SOLO_VE_JPEG_CFG ;
 int SOLO_VE_JPEG_CFG1 ;
 int SOLO_VE_JPEG_CTRL ;
 int SOLO_VE_JPEG_QP_CH_H ;
 int SOLO_VE_JPEG_QP_CH_L ;
 int SOLO_VE_JPEG_QP_TBL ;
 int solo_reg_write (struct solo_dev*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void solo_jpeg_config(struct solo_dev *solo_dev)
{
 if (solo_dev->type == SOLO_DEV_6010) {
  solo_reg_write(solo_dev, SOLO_VE_JPEG_QP_TBL,
          (2 << 24) | (2 << 16) | (2 << 8) | 2);
 } else {
  solo_reg_write(solo_dev, SOLO_VE_JPEG_QP_TBL,
          (4 << 24) | (3 << 16) | (2 << 8) | 1);
 }

 spin_lock_init(&solo_dev->jpeg_qp_lock);


 solo_dev->jpeg_qp[0] = solo_dev->jpeg_qp[1] = SOLO_QP_INIT;
 solo_reg_write(solo_dev, SOLO_VE_JPEG_QP_CH_L, SOLO_QP_INIT);
 solo_reg_write(solo_dev, SOLO_VE_JPEG_QP_CH_H, SOLO_QP_INIT);

 solo_reg_write(solo_dev, SOLO_VE_JPEG_CFG,
  (SOLO_JPEG_EXT_SIZE(solo_dev) & 0xffff0000) |
  ((SOLO_JPEG_EXT_ADDR(solo_dev) >> 16) & 0x0000ffff));
 solo_reg_write(solo_dev, SOLO_VE_JPEG_CTRL, 0xffffffff);
 if (solo_dev->type == SOLO_DEV_6110) {
  solo_reg_write(solo_dev, SOLO_VE_JPEG_CFG1,
          (0 << 16) | (30 << 8) | 60);
 }
}
