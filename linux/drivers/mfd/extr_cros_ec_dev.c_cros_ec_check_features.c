
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_dev {unsigned int* features; int dev; int ec_dev; scalar_t__ cmd_offset; } ;
struct cros_ec_command {int data; int result; int insize; scalar_t__ command; } ;


 scalar_t__ EC_CMD_GET_FEATURES ;
 int EC_FEATURE_MASK_0 (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cros_ec_cmd_xfer_status (int ,struct cros_ec_command*) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int dev_warn (int ,char*,int,int ) ;
 int kfree (struct cros_ec_command*) ;
 struct cros_ec_command* kzalloc (int,int ) ;
 int memcpy (unsigned int*,int ,int) ;
 int memset (unsigned int*,int ,int) ;

__attribute__((used)) static int cros_ec_check_features(struct cros_ec_dev *ec, int feature)
{
 struct cros_ec_command *msg;
 int ret;

 if (ec->features[0] == -1U && ec->features[1] == -1U) {

  msg = kzalloc(sizeof(*msg) + sizeof(ec->features), GFP_KERNEL);
  if (!msg)
   return -ENOMEM;

  msg->command = EC_CMD_GET_FEATURES + ec->cmd_offset;
  msg->insize = sizeof(ec->features);

  ret = cros_ec_cmd_xfer_status(ec->ec_dev, msg);
  if (ret < 0) {
   dev_warn(ec->dev, "cannot get EC features: %d/%d\n",
     ret, msg->result);
   memset(ec->features, 0, sizeof(ec->features));
  } else {
   memcpy(ec->features, msg->data, sizeof(ec->features));
  }

  dev_dbg(ec->dev, "EC features %08x %08x\n",
   ec->features[0], ec->features[1]);

  kfree(msg);
 }

 return ec->features[feature / 32] & EC_FEATURE_MASK_0(feature);
}
