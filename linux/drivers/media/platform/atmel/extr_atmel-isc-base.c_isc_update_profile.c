
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct isc_device {int v4l2_dev; struct regmap* regmap; } ;


 int ETIMEDOUT ;
 int ISC_CTRLEN ;
 int ISC_CTRLSR ;
 int ISC_CTRL_UPPRO ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;
 int usleep_range (int,int) ;
 int v4l2_warn (int *,char*) ;

__attribute__((used)) static int isc_update_profile(struct isc_device *isc)
{
 struct regmap *regmap = isc->regmap;
 u32 sr;
 int counter = 100;

 regmap_write(regmap, ISC_CTRLEN, ISC_CTRL_UPPRO);

 regmap_read(regmap, ISC_CTRLSR, &sr);
 while ((sr & ISC_CTRL_UPPRO) && counter--) {
  usleep_range(1000, 2000);
  regmap_read(regmap, ISC_CTRLSR, &sr);
 }

 if (counter < 0) {
  v4l2_warn(&isc->v4l2_dev, "Time out to update profile\n");
  return -ETIMEDOUT;
 }

 return 0;
}
