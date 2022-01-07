
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct secocec_data {struct device* dev; } ;
struct device {int dummy; } ;
struct cec_adapter {int dummy; } ;


 int SECOCEC_ENABLE_REG_1 ;
 int SECOCEC_ENABLE_REG_1_CEC ;
 int SECOCEC_ENABLE_REG_1_IR ;
 int SECOCEC_STATUS_REG_1 ;
 struct secocec_data* cec_get_drvdata (struct cec_adapter*) ;
 int dev_dbg (struct device*,char*) ;
 int smb_rd16 (int ,int*) ;
 int smb_wr16 (int ,int) ;

__attribute__((used)) static int secocec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct secocec_data *cec = cec_get_drvdata(adap);
 struct device *dev = cec->dev;
 u16 val = 0;
 int status;

 if (enable) {

  status = smb_rd16(SECOCEC_STATUS_REG_1, &val);
  if (status)
   goto err;

  status = smb_wr16(SECOCEC_STATUS_REG_1, val);
  if (status)
   goto err;


  status = smb_rd16(SECOCEC_ENABLE_REG_1, &val);
  if (status)
   goto err;

  status = smb_wr16(SECOCEC_ENABLE_REG_1,
      val | SECOCEC_ENABLE_REG_1_CEC);
  if (status)
   goto err;

  dev_dbg(dev, "Device enabled");
 } else {

  status = smb_rd16(SECOCEC_STATUS_REG_1, &val);
  status = smb_wr16(SECOCEC_STATUS_REG_1, val);


  status = smb_rd16(SECOCEC_ENABLE_REG_1, &val);
  status = smb_wr16(SECOCEC_ENABLE_REG_1, val &
      ~SECOCEC_ENABLE_REG_1_CEC &
      ~SECOCEC_ENABLE_REG_1_IR);

  dev_dbg(dev, "Device disabled");
 }

 return 0;
err:
 return status;
}
