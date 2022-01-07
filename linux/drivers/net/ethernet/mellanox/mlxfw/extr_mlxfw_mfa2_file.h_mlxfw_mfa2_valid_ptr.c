
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxfw_mfa2_file {TYPE_1__* fw; } ;
struct TYPE_2__ {void* data; int size; } ;



__attribute__((used)) static inline bool mlxfw_mfa2_valid_ptr(const struct mlxfw_mfa2_file *mfa2_file,
     const void *ptr)
{
 const void *valid_to = mfa2_file->fw->data + mfa2_file->fw->size;
 const void *valid_from = mfa2_file->fw->data;

 return ptr > valid_from && ptr < valid_to;
}
