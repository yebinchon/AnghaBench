
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ data_id_rreg; int data_selection_ctrl; } ;
struct TYPE_3__ {scalar_t__ code; } ;
struct mipid02_dev {TYPE_2__ r; TYPE_1__ fmt; } ;


 int EINVAL ;
 scalar_t__ MEDIA_BUS_FMT_JPEG_1X8 ;
 int SELECTION_MANUAL_DATA ;
 scalar_t__ data_type_from_code (scalar_t__) ;

__attribute__((used)) static int mipid02_configure_from_code(struct mipid02_dev *bridge)
{
 u8 data_type;

 bridge->r.data_id_rreg = 0;

 if (bridge->fmt.code != MEDIA_BUS_FMT_JPEG_1X8) {
  bridge->r.data_selection_ctrl |= SELECTION_MANUAL_DATA;

  data_type = data_type_from_code(bridge->fmt.code);
  if (!data_type)
   return -EINVAL;
  bridge->r.data_id_rreg = data_type;
 }

 return 0;
}
