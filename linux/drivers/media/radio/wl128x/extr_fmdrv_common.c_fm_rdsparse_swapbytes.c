
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fmdev {int asci_id; } ;
struct TYPE_3__ {int* buff; } ;
struct TYPE_4__ {TYPE_1__ groupdatabuff; } ;
struct fm_rdsdata_format {TYPE_2__ data; } ;


 int FM_RX_RDS_INFO_FIELD_MAX ;
 int swap (int,int) ;

__attribute__((used)) static void fm_rdsparse_swapbytes(struct fmdev *fmdev,
  struct fm_rdsdata_format *rds_format)
{
 u8 index = 0;
 u8 *rds_buff;






 if (fmdev->asci_id != 0x6350) {
  rds_buff = &rds_format->data.groupdatabuff.buff[0];
  while (index + 1 < FM_RX_RDS_INFO_FIELD_MAX) {
   swap(rds_buff[index], rds_buff[index + 1]);
   index += 2;
  }
 }
}
