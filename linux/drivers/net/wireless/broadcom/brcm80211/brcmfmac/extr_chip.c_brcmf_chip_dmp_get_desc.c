
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct brcmf_chip_priv {int ctx; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read32 ) (int ,int) ;} ;


 int DMP_DESC_ADDRESS ;
 int DMP_DESC_ADDRSIZE_GT32 ;
 int DMP_DESC_TYPE_MSK ;
 int stub1 (int ,int) ;

__attribute__((used)) static u32 brcmf_chip_dmp_get_desc(struct brcmf_chip_priv *ci, u32 *eromaddr,
       u8 *type)
{
 u32 val;


 val = ci->ops->read32(ci->ctx, *eromaddr);
 *eromaddr += 4;

 if (!type)
  return val;


 *type = (val & DMP_DESC_TYPE_MSK);
 if ((*type & ~DMP_DESC_ADDRSIZE_GT32) == DMP_DESC_ADDRESS)
  *type = DMP_DESC_ADDRESS;

 return val;
}
