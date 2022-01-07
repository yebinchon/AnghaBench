
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libipw_device {int scans; } ;



__attribute__((used)) static inline int libipw_get_scans(struct libipw_device *ieee)
{
 return ieee->scans;
}
