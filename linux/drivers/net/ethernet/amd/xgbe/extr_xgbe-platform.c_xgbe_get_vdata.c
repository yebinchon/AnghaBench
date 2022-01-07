
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_version_data {int dummy; } ;
struct xgbe_prv_data {scalar_t__ use_acpi; } ;


 struct xgbe_version_data* xgbe_acpi_vdata (struct xgbe_prv_data*) ;
 struct xgbe_version_data* xgbe_of_vdata (struct xgbe_prv_data*) ;

__attribute__((used)) static struct xgbe_version_data *xgbe_get_vdata(struct xgbe_prv_data *pdata)
{
 return pdata->use_acpi ? xgbe_acpi_vdata(pdata)
          : xgbe_of_vdata(pdata);
}
