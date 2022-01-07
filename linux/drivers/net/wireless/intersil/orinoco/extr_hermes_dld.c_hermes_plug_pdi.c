
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdr {int dummy; } ;
struct pdi {int data; } ;
struct hermes {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* program ) (struct hermes*,int ,int ,scalar_t__) ;} ;


 int EINVAL ;
 struct pdr* hermes_find_pdr (struct pdr const*,int ,void const*) ;
 int pdi_id (struct pdi const*) ;
 scalar_t__ pdi_len (struct pdi const*) ;
 int pdr_addr (struct pdr const*) ;
 scalar_t__ pdr_len (struct pdr const*) ;
 int stub1 (struct hermes*,int ,int ,scalar_t__) ;

__attribute__((used)) static int
hermes_plug_pdi(struct hermes *hw, const struct pdr *first_pdr,
  const struct pdi *pdi, const void *pdr_end)
{
 const struct pdr *pdr;


 pdr = hermes_find_pdr(first_pdr, pdi_id(pdi), pdr_end);


 if (!pdr)
  return 0;


 if (pdi_len(pdi) != pdr_len(pdr))
  return -EINVAL;


 hw->ops->program(hw, pdi->data, pdr_addr(pdr), pdi_len(pdi));

 return 0;
}
