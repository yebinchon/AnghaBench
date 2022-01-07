
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_core {int dummy; } ;


 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static void mlxsw_core_reg_access_cb(struct mlxsw_core *mlxsw_core,
         char *payload, size_t payload_len,
         unsigned long cb_priv)
{
 char *orig_payload = (char *) cb_priv;

 memcpy(orig_payload, payload, payload_len);
}
