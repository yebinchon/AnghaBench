
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ath5k_hw {int ah_mac_srev; int dev; } ;
struct ar231x_board_config {int devid; } ;


 struct ar231x_board_config* dev_get_platdata (int *) ;
 struct platform_device* to_platform_device (int ) ;

int ath5k_hw_read_srev(struct ath5k_hw *ah)
{
 struct platform_device *pdev = to_platform_device(ah->dev);
 struct ar231x_board_config *bcfg = dev_get_platdata(&pdev->dev);
 ah->ah_mac_srev = bcfg->devid;
 return 0;
}
