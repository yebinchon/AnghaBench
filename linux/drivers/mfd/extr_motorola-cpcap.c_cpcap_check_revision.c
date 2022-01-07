
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct cpcap_ddata {TYPE_1__* spi; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CPCAP_REVISION_2_1 ;
 int CPCAP_REVISION_MAJOR (scalar_t__) ;
 int CPCAP_REVISION_MINOR (scalar_t__) ;
 scalar_t__ CPCAP_VENDOR_ST ;
 int ENODEV ;
 int cpcap_get_revision (int *,int ,scalar_t__*) ;
 int cpcap_get_vendor (int *,int ,scalar_t__*) ;
 int dev_info (int *,char*,...) ;

__attribute__((used)) static int cpcap_check_revision(struct cpcap_ddata *cpcap)
{
 u16 vendor, rev;
 int ret;

 ret = cpcap_get_vendor(&cpcap->spi->dev, cpcap->regmap, &vendor);
 if (ret)
  return ret;

 ret = cpcap_get_revision(&cpcap->spi->dev, cpcap->regmap, &rev);
 if (ret)
  return ret;

 dev_info(&cpcap->spi->dev, "CPCAP vendor: %s rev: %i.%i (%x)\n",
   vendor == CPCAP_VENDOR_ST ? "ST" : "TI",
   CPCAP_REVISION_MAJOR(rev), CPCAP_REVISION_MINOR(rev),
   rev);

 if (rev < CPCAP_REVISION_2_1) {
  dev_info(&cpcap->spi->dev,
    "Please add old CPCAP revision support as needed\n");
  return -ENODEV;
 }

 return 0;
}
