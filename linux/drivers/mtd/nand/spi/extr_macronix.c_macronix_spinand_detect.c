
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__* data; } ;
struct spinand_device {TYPE_1__ id; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ SPINAND_MFR_MACRONIX ;
 int macronix_spinand_table ;
 int spinand_match_and_init (struct spinand_device*,int ,int ,scalar_t__) ;

__attribute__((used)) static int macronix_spinand_detect(struct spinand_device *spinand)
{
 u8 *id = spinand->id.data;
 int ret;





 if (id[1] != SPINAND_MFR_MACRONIX)
  return 0;

 ret = spinand_match_and_init(spinand, macronix_spinand_table,
         ARRAY_SIZE(macronix_spinand_table),
         id[2]);
 if (ret)
  return ret;

 return 1;
}
