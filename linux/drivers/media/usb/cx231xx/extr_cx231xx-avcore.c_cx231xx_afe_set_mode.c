
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int afe_mode; scalar_t__ video_input; } ;
typedef enum AFE_MODE { ____Placeholder_AFE_MODE } AFE_MODE ;







 scalar_t__ CX231XX_VMUX_TELEVISION ;
 int cx231xx_Setup_AFE_for_LowIF (struct cx231xx*) ;
 int cx231xx_afe_adjust_ref_count (struct cx231xx*,scalar_t__) ;
 int cx231xx_afe_setup_AFE_for_baseband (struct cx231xx*) ;

int cx231xx_afe_set_mode(struct cx231xx *dev, enum AFE_MODE mode)
{
 int status = 0;






 switch (mode) {
 case 129:
  cx231xx_Setup_AFE_for_LowIF(dev);
  break;
 case 132:
  status = cx231xx_afe_setup_AFE_for_baseband(dev);
  break;
 case 131:

  break;
 case 128:

  break;
 case 130:

  break;
 }

 if ((mode != dev->afe_mode) &&
  (dev->video_input == CX231XX_VMUX_TELEVISION))
  status = cx231xx_afe_adjust_ref_count(dev,
           CX231XX_VMUX_TELEVISION);

 dev->afe_mode = mode;

 return status;
}
