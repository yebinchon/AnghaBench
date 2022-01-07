
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsaf_device {int dummy; } ;



__attribute__((used)) static inline void *hns_dsaf_dev_priv(const struct dsaf_device *dsaf_dev)
{
 return (void *)((u8 *)dsaf_dev + sizeof(*dsaf_dev));
}
