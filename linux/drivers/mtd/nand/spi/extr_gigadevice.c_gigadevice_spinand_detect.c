
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int* data; } ;
struct spinand_device {TYPE_1__ id; } ;


 int ARRAY_SIZE (int ) ;
 int SPINAND_MFR_GIGADEVICE ;
 int gigadevice_spinand_table ;
 int spinand_match_and_init (struct spinand_device*,int ,int ,int) ;

__attribute__((used)) static int gigadevice_spinand_detect(struct spinand_device *spinand)
{
 u8 *id = spinand->id.data;
 u16 did;
 int ret;






 if (id[0] == SPINAND_MFR_GIGADEVICE)
  did = (id[1] << 8) + id[2];
 else if (id[0] == 0 && id[1] == SPINAND_MFR_GIGADEVICE)
  did = id[2];
 else
  return 0;

 ret = spinand_match_and_init(spinand, gigadevice_spinand_table,
         ARRAY_SIZE(gigadevice_spinand_table),
         did);
 if (ret)
  return ret;

 return 1;
}
