
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct si4713_device {int tune_rnl; } ;


 int si4713_tx_tune_status (struct si4713_device*,int,int *,int *,int *,int *) ;

__attribute__((used)) static int si4713_update_tune_status(struct si4713_device *sdev)
{
 int rval;
 u16 f = 0;
 u8 p = 0, a = 0, n = 0;

 rval = si4713_tx_tune_status(sdev, 0x00, &f, &p, &a, &n);

 if (rval < 0)
  goto exit;






 sdev->tune_rnl = n;

exit:
 return rval;
}
