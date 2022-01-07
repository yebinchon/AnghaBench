
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxfw_mfa2_tlv_multi {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;


 int EINVAL ;
 int MLXFW_MFA2_TLV_COMPONENT_PTR ;
 struct mlxfw_mfa2_tlv_multi* mlxfw_mfa2_tlv_dev_get (struct mlxfw_mfa2_file const*,char const*,int ) ;
 int mlxfw_mfa2_tlv_multi_child_count (struct mlxfw_mfa2_file const*,struct mlxfw_mfa2_tlv_multi const*,int ,int *) ;

int mlxfw_mfa2_file_component_count(const struct mlxfw_mfa2_file *mfa2_file,
        const char *psid, u32 psid_size,
        u32 *p_count)
{
 const struct mlxfw_mfa2_tlv_multi *dev_multi;
 u16 count;
 int err;

 dev_multi = mlxfw_mfa2_tlv_dev_get(mfa2_file, psid, psid_size);
 if (!dev_multi)
  return -EINVAL;

 err = mlxfw_mfa2_tlv_multi_child_count(mfa2_file, dev_multi,
            MLXFW_MFA2_TLV_COMPONENT_PTR,
            &count);
 if (err)
  return err;

 *p_count = count;
 return 0;
}
