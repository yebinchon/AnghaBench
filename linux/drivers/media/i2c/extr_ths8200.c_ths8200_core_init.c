
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int THS8200_CHIP_CTL ;
 int THS8200_DATA_CNTL ;
 int THS8200_DTG1_CBCR_SYNC_MSB ;
 int THS8200_DTG1_MODE ;
 int THS8200_DTG1_Y_SYNC_MSB ;
 int ths8200_write (struct v4l2_subdev*,int ,int) ;
 int ths8200_write_and_or (struct v4l2_subdev*,int ,int,int) ;

__attribute__((used)) static void ths8200_core_init(struct v4l2_subdev *sd)
{

 ths8200_write_and_or(sd, THS8200_CHIP_CTL, 0x3f, 0xc0);






 ths8200_write(sd, THS8200_DATA_CNTL, 0x70);




 ths8200_write(sd, THS8200_DTG1_MODE, 0x87);






 ths8200_write(sd, THS8200_DTG1_Y_SYNC_MSB, 0x00);
 ths8200_write(sd, THS8200_DTG1_CBCR_SYNC_MSB, 0x00);
}
