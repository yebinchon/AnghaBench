
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int intr_coal_div; int intr_coal_mult; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct ionic {TYPE_2__ ident; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 ionic_coal_hw_to_usec(struct ionic *ionic, u32 units)
{
 u32 mult = le32_to_cpu(ionic->ident.dev.intr_coal_mult);
 u32 div = le32_to_cpu(ionic->ident.dev.intr_coal_div);


 if (!div || !mult)
  return 0;


 return (units * div) / mult;
}
