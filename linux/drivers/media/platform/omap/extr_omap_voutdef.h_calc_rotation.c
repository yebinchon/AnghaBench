
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_vout_device {int rotation; int mirror; } ;


 int dss_rotation_0_degree ;




__attribute__((used)) static inline int calc_rotation(const struct omap_vout_device *vout)
{
 if (!vout->mirror)
  return vout->rotation;

 switch (vout->rotation) {
 case 128:
  return 129;
 case 129:
  return 128;
 case 130:
  return dss_rotation_0_degree;
 default:
  return 130;
 }
}
