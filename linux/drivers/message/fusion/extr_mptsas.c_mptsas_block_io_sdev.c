
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int SDEV_BLOCK ;
 int scsi_device_set_state (struct scsi_device*,int ) ;

__attribute__((used)) static void
mptsas_block_io_sdev(struct scsi_device *sdev, void *data)
{
 scsi_device_set_state(sdev, SDEV_BLOCK);
}
