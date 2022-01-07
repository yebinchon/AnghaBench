
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int dev; int hbm_f_pg_supported; } ;
struct hbm_power_gate {int hbm_cmd; } ;


 int EOPNOTSUPP ;
 int dev_err (int ,char*) ;
 int mei_hbm_hdr (struct mei_msg_hdr*,size_t const) ;
 int mei_hbm_write_message (struct mei_device*,struct mei_msg_hdr*,struct hbm_power_gate*) ;
 int memset (struct hbm_power_gate*,int ,size_t const) ;

int mei_hbm_pg(struct mei_device *dev, u8 pg_cmd)
{
 struct mei_msg_hdr mei_hdr;
 struct hbm_power_gate req;
 const size_t len = sizeof(struct hbm_power_gate);
 int ret;

 if (!dev->hbm_f_pg_supported)
  return -EOPNOTSUPP;

 mei_hbm_hdr(&mei_hdr, len);

 memset(&req, 0, len);
 req.hbm_cmd = pg_cmd;

 ret = mei_hbm_write_message(dev, &mei_hdr, &req);
 if (ret)
  dev_err(dev->dev, "power gate command write failed.\n");
 return ret;
}
