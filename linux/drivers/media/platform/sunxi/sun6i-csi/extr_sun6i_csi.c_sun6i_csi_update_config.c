
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_csi_dev {int dummy; } ;
struct sun6i_csi_config {int dummy; } ;
struct sun6i_csi {int config; } ;


 int EINVAL ;
 int memcpy (int *,struct sun6i_csi_config*,int) ;
 int sun6i_csi_set_format (struct sun6i_csi_dev*) ;
 int sun6i_csi_set_window (struct sun6i_csi_dev*) ;
 int sun6i_csi_setup_bus (struct sun6i_csi_dev*) ;
 struct sun6i_csi_dev* sun6i_csi_to_dev (struct sun6i_csi*) ;

int sun6i_csi_update_config(struct sun6i_csi *csi,
       struct sun6i_csi_config *config)
{
 struct sun6i_csi_dev *sdev = sun6i_csi_to_dev(csi);

 if (!config)
  return -EINVAL;

 memcpy(&csi->config, config, sizeof(csi->config));

 sun6i_csi_setup_bus(sdev);
 sun6i_csi_set_format(sdev);
 sun6i_csi_set_window(sdev);

 return 0;
}
