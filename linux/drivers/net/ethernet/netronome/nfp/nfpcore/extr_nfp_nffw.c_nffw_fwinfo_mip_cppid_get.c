
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nffw_fwinfo {int mip_cppid; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 nffw_fwinfo_mip_cppid_get(const struct nffw_fwinfo *fi)
{
 return le32_to_cpu(fi->mip_cppid);
}
