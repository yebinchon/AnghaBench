
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_file_info {int dummy; } ;
typedef int dev_t ;


 int MINOR (int ) ;
 struct ocxl_file_info* idr_find (int *,int ) ;
 int minors_idr ;

__attribute__((used)) static struct ocxl_file_info *find_file_info(dev_t devno)
{
 struct ocxl_file_info *info;
 info = idr_find(&minors_idr, MINOR(devno));
 return info;
}
