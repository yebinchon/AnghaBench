
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_afu_config {int dummy; } ;
struct ocxl_afu {struct ocxl_afu_config config; } ;



struct ocxl_afu_config *ocxl_afu_config(struct ocxl_afu *afu)
{
 return &afu->config;
}
