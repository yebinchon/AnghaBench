
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct scsi_device {scalar_t__ inq_periph_qual; scalar_t__ type; int inquiry_len; char* inquiry; } ;
struct TYPE_12__ {scalar_t__ type; int tflags; int id; int channel; } ;
typedef TYPE_3__ VirtTarget ;
struct TYPE_13__ {TYPE_2__* ioc; } ;
struct TYPE_10__ {scalar_t__ Saf_Te; } ;
struct TYPE_11__ {TYPE_1__ spi_data; } ;
typedef TYPE_4__ MPT_SCSI_HOST ;


 int MPT_TARGET_FLAGS_SAF_TE_ISSUED ;
 scalar_t__ TYPE_PROCESSOR ;
 int mptspi_setTargetNegoParms (TYPE_4__*,TYPE_3__*,struct scsi_device*) ;
 int mptspi_writeIOCPage4 (TYPE_4__*,int ,int ) ;

__attribute__((used)) static void
mptspi_initTarget(MPT_SCSI_HOST *hd, VirtTarget *vtarget,
      struct scsi_device *sdev)
{




 if (sdev->inq_periph_qual != 0)
  return;

 if (vtarget == ((void*)0))
  return;

 vtarget->type = sdev->type;

 if ((sdev->type == TYPE_PROCESSOR) && (hd->ioc->spi_data.Saf_Te)) {


  vtarget->tflags |= MPT_TARGET_FLAGS_SAF_TE_ISSUED;
  mptspi_writeIOCPage4(hd, vtarget->channel, vtarget->id);
 }else if ((sdev->type == TYPE_PROCESSOR) &&
  !(vtarget->tflags & MPT_TARGET_FLAGS_SAF_TE_ISSUED )) {
  if (sdev->inquiry_len > 49 ) {
   if (sdev->inquiry[44] == 'S' &&
       sdev->inquiry[45] == 'A' &&
       sdev->inquiry[46] == 'F' &&
       sdev->inquiry[47] == '-' &&
       sdev->inquiry[48] == 'T' &&
       sdev->inquiry[49] == 'E' ) {
    vtarget->tflags |= MPT_TARGET_FLAGS_SAF_TE_ISSUED;
    mptspi_writeIOCPage4(hd, vtarget->channel, vtarget->id);
   }
  }
 }
 mptspi_setTargetNegoParms(hd, vtarget, sdev);
}
