
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pdr {int id; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32
pdr_id(const struct pdr *pdr)
{
 return le32_to_cpu(pdr->id);
}
