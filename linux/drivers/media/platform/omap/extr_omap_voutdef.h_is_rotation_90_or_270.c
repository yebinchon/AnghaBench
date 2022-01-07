
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_vout_device {scalar_t__ rotation; } ;


 scalar_t__ dss_rotation_270_degree ;
 scalar_t__ dss_rotation_90_degree ;

__attribute__((used)) static inline int is_rotation_90_or_270(const struct omap_vout_device *vout)
{
 return (vout->rotation == dss_rotation_90_degree ||
   vout->rotation == dss_rotation_270_degree);
}
