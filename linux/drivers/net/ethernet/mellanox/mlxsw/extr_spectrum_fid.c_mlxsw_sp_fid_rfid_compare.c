
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlxsw_sp_fid {scalar_t__ fid_index; TYPE_1__* fid_family; } ;
struct TYPE_2__ {scalar_t__ start_index; } ;



__attribute__((used)) static bool mlxsw_sp_fid_rfid_compare(const struct mlxsw_sp_fid *fid,
          const void *arg)
{
 u16 rif_index = *(u16 *) arg;

 return fid->fid_index == rif_index + fid->fid_family->start_index;
}
