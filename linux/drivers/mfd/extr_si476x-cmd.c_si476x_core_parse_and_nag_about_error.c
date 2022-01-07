
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct si476x_core {scalar_t__ revision; TYPE_1__* client; } ;
typedef int buffer ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int SI476X_I2C_RECV ;
 scalar_t__ SI476X_REVISION_A10 ;
 int dev_err (int *,char*,...) ;
 int si476x_core_i2c_xfer (struct si476x_core*,int ,int*,int) ;

__attribute__((used)) static int si476x_core_parse_and_nag_about_error(struct si476x_core *core)
{
 int err;
 char *cause;
 u8 buffer[2];

 if (core->revision != SI476X_REVISION_A10) {
  err = si476x_core_i2c_xfer(core, SI476X_I2C_RECV,
        buffer, sizeof(buffer));
  if (err == sizeof(buffer)) {
   switch (buffer[1]) {
   case 132:
    cause = "Bad command";
    err = -EINVAL;
    break;
   case 137:
    cause = "Bad argument #1";
    err = -EINVAL;
    break;
   case 136:
    cause = "Bad argument #2";
    err = -EINVAL;
    break;
   case 135:
    cause = "Bad argument #3";
    err = -EINVAL;
    break;
   case 134:
    cause = "Bad argument #4";
    err = -EINVAL;
    break;
   case 128:
    cause = "Chip is busy";
    err = -EBUSY;
    break;
   case 131:
    cause = "Bad internal memory";
    err = -EIO;
    break;
   case 130:
    cause = "Bad patch";
    err = -EINVAL;
    break;
   case 133:
    cause = "Bad boot mode";
    err = -EINVAL;
    break;
   case 129:
    cause = "Bad property";
    err = -EINVAL;
    break;
   default:
    cause = "Unknown";
    err = -EIO;
   }

   dev_err(&core->client->dev,
    "[Chip error status]: %s\n", cause);
  } else {
   dev_err(&core->client->dev,
    "Failed to fetch error code\n");
   err = (err >= 0) ? -EIO : err;
  }
 } else {
  err = -EIO;
 }

 return err;
}
