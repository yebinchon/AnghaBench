
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int data; int size; } ;
struct device {int dummy; } ;
struct adapter {TYPE_1__* pdev; } ;
typedef int buf ;
struct TYPE_2__ {struct device dev; } ;


 char* TPSRAM_NAME ;
 int TP_VERSION_MAJOR ;
 int TP_VERSION_MICRO ;
 int TP_VERSION_MINOR ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,struct device*) ;
 int snprintf (char*,int,char*,char) ;
 int t3_check_tpsram (struct adapter*,int ,int ) ;
 int t3_set_proto_sram (struct adapter*,int ) ;
 char t3rev2char (struct adapter*) ;

__attribute__((used)) static int update_tpsram(struct adapter *adap)
{
 const struct firmware *tpsram;
 char buf[64];
 struct device *dev = &adap->pdev->dev;
 int ret;
 char rev;

 rev = t3rev2char(adap);
 if (!rev)
  return 0;

 snprintf(buf, sizeof(buf), TPSRAM_NAME, rev);

 ret = request_firmware(&tpsram, buf, dev);
 if (ret < 0) {
  dev_err(dev, "could not load TP SRAM: unable to load %s\n",
   buf);
  return ret;
 }

 ret = t3_check_tpsram(adap, tpsram->data, tpsram->size);
 if (ret)
  goto release_tpsram;

 ret = t3_set_proto_sram(adap, tpsram->data);
 if (ret == 0)
  dev_info(dev,
    "successful update of protocol engine "
    "to %d.%d.%d\n",
    TP_VERSION_MAJOR, TP_VERSION_MINOR, TP_VERSION_MICRO);
 else
  dev_err(dev, "failed to update of protocol engine %d.%d.%d\n",
   TP_VERSION_MAJOR, TP_VERSION_MINOR, TP_VERSION_MICRO);
 if (ret)
  dev_err(dev, "loading protocol SRAM failed\n");

release_tpsram:
 release_firmware(tpsram);

 return ret;
}
