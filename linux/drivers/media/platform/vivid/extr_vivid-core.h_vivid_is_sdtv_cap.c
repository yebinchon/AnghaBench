
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int dummy; } ;


 scalar_t__ vivid_is_svid_cap (struct vivid_dev const*) ;
 scalar_t__ vivid_is_tv_cap (struct vivid_dev const*) ;

__attribute__((used)) static inline bool vivid_is_sdtv_cap(const struct vivid_dev *dev)
{
 return vivid_is_tv_cap(dev) || vivid_is_svid_cap(dev);
}
