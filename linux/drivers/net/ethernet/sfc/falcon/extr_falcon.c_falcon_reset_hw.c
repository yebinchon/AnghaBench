
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {int spi_lock; } ;
struct ef4_nic {struct falcon_nic_data* nic_data; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;


 int __falcon_reset_hw (struct ef4_nic*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int falcon_reset_hw(struct ef4_nic *efx, enum reset_type method)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 int rc;

 mutex_lock(&nic_data->spi_lock);
 rc = __falcon_reset_hw(efx, method);
 mutex_unlock(&nic_data->spi_lock);

 return rc;
}
