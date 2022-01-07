
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {scalar_t__ chip_id; scalar_t__ is_webcam; } ;


 scalar_t__ CHIP_ID_EM2860 ;
 scalar_t__ CHIP_ID_EM2883 ;
 int disable_vbi ;

__attribute__((used)) static int em28xx_vbi_supported(struct em28xx *dev)
{

 if (disable_vbi == 1)
  return 0;

 if (dev->is_webcam)
  return 0;



 if (dev->chip_id == CHIP_ID_EM2860 ||
     dev->chip_id == CHIP_ID_EM2883)
  return 1;


 return 0;
}
