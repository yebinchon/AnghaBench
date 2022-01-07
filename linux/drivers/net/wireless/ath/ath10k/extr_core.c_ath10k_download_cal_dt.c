
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_3__ {int cal_data_len; } ;
struct ath10k {TYPE_1__ hw_params; TYPE_2__* dev; } ;
struct TYPE_4__ {struct device_node* of_node; } ;


 int EMSGSIZE ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ath10k_download_board_data (struct ath10k*,void*,int) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int kfree (void*) ;
 void* kmalloc (int,int ) ;
 int of_get_property (struct device_node*,char const*,int*) ;
 int of_property_read_u8_array (struct device_node*,char const*,void*,int) ;

__attribute__((used)) static int ath10k_download_cal_dt(struct ath10k *ar, const char *dt_name)
{
 struct device_node *node;
 int data_len;
 void *data;
 int ret;

 node = ar->dev->of_node;
 if (!node)



  return -ENOENT;

 if (!of_get_property(node, dt_name, &data_len)) {

  return -ENOENT;
 }

 if (data_len != ar->hw_params.cal_data_len) {
  ath10k_warn(ar, "invalid calibration data length in DT: %d\n",
       data_len);
  ret = -EMSGSIZE;
  goto out;
 }

 data = kmalloc(data_len, GFP_KERNEL);
 if (!data) {
  ret = -ENOMEM;
  goto out;
 }

 ret = of_property_read_u8_array(node, dt_name, data, data_len);
 if (ret) {
  ath10k_warn(ar, "failed to read calibration data from DT: %d\n",
       ret);
  goto out_free;
 }

 ret = ath10k_download_board_data(ar, data, data_len);
 if (ret) {
  ath10k_warn(ar, "failed to download calibration data from Device Tree: %d\n",
       ret);
  goto out_free;
 }

 ret = 0;

out_free:
 kfree(data);

out:
 return ret;
}
