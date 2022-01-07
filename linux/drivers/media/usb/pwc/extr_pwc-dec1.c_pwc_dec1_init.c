
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_dec1_private {int version; } ;
struct pwc_device {int release; struct pwc_dec1_private dec1; } ;



void pwc_dec1_init(struct pwc_device *pdev, const unsigned char *cmd)
{
 struct pwc_dec1_private *pdec = &pdev->dec1;

 pdec->version = pdev->release;
}
