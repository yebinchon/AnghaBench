
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int image_mask; int vcinterface; int vendpoint; scalar_t__ frame_trailer_size; scalar_t__ frame_header_size; int type; } ;


 scalar_t__ DEVICE_USE_CODEC1 (int ) ;
 scalar_t__ DEVICE_USE_CODEC3 (int ) ;
 int PSZ_CIF ;
 int PSZ_QCIF ;
 int PSZ_QSIF ;
 int PSZ_SIF ;
 int PSZ_SQCIF ;
 int PSZ_VGA ;
 scalar_t__ TOUCAM_HEADER_SIZE ;
 scalar_t__ TOUCAM_TRAILER_SIZE ;

void pwc_construct(struct pwc_device *pdev)
{
 if (DEVICE_USE_CODEC1(pdev->type)) {

  pdev->image_mask = 1 << PSZ_SQCIF | 1 << PSZ_QCIF | 1 << PSZ_CIF;
  pdev->vcinterface = 2;
  pdev->vendpoint = 4;
  pdev->frame_header_size = 0;
  pdev->frame_trailer_size = 0;

 } else if (DEVICE_USE_CODEC3(pdev->type)) {

  pdev->image_mask = 1 << PSZ_QSIF | 1 << PSZ_SIF | 1 << PSZ_VGA;
  pdev->vcinterface = 3;
  pdev->vendpoint = 5;
  pdev->frame_header_size = TOUCAM_HEADER_SIZE;
  pdev->frame_trailer_size = TOUCAM_TRAILER_SIZE;

 } else {

  pdev->image_mask = 1 << PSZ_SQCIF | 1 << PSZ_QSIF | 1 << PSZ_QCIF | 1 << PSZ_SIF | 1 << PSZ_CIF | 1 << PSZ_VGA;
  pdev->vcinterface = 3;
  pdev->vendpoint = 4;
  pdev->frame_header_size = 0;
  pdev->frame_trailer_size = 0;
 }
}
