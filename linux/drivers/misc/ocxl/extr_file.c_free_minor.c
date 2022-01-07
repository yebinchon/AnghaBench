
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devt; } ;
struct ocxl_file_info {TYPE_1__ dev; } ;


 int MINOR (int ) ;
 int idr_remove (int *,int ) ;
 int minors_idr ;
 int minors_idr_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void free_minor(struct ocxl_file_info *info)
{
 mutex_lock(&minors_idr_lock);
 idr_remove(&minors_idr, MINOR(info->dev.devt));
 mutex_unlock(&minors_idr_lock);
}
