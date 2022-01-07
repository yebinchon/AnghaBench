
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_file_info {int dummy; } ;


 int GFP_KERNEL ;
 int OCXL_NUM_MINORS ;
 int idr_alloc (int *,struct ocxl_file_info*,int ,int ,int ) ;
 int minors_idr ;
 int minors_idr_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int allocate_minor(struct ocxl_file_info *info)
{
 int minor;

 mutex_lock(&minors_idr_lock);
 minor = idr_alloc(&minors_idr, info, 0, OCXL_NUM_MINORS, GFP_KERNEL);
 mutex_unlock(&minors_idr_lock);
 return minor;
}
