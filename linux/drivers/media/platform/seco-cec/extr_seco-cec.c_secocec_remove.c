
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct secocec_data {int cec_adap; int notifier; scalar_t__ ir; } ;
struct platform_device {int dev; } ;


 int BRA_SMB_BASE_ADDR ;
 int SECOCEC_ENABLE_REG_1 ;
 int SECOCEC_ENABLE_REG_1_IR ;
 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_unregister_adapter (int ) ;
 int dev_dbg (int *,char*) ;
 struct secocec_data* platform_get_drvdata (struct platform_device*) ;
 int release_region (int ,int) ;
 int smb_rd16 (int ,int*) ;
 int smb_wr16 (int ,int) ;

__attribute__((used)) static int secocec_remove(struct platform_device *pdev)
{
 struct secocec_data *secocec = platform_get_drvdata(pdev);
 u16 val;

 if (secocec->ir) {
  smb_rd16(SECOCEC_ENABLE_REG_1, &val);

  smb_wr16(SECOCEC_ENABLE_REG_1, val & ~SECOCEC_ENABLE_REG_1_IR);

  dev_dbg(&pdev->dev, "IR disabled");
 }
 cec_notifier_cec_adap_unregister(secocec->notifier);
 cec_unregister_adapter(secocec->cec_adap);

 release_region(BRA_SMB_BASE_ADDR, 7);

 dev_dbg(&pdev->dev, "CEC device removed");

 return 0;
}
