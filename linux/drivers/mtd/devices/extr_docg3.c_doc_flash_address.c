
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct docg3 {int dummy; } ;


 int DOC_FLASHADDRESS ;
 int doc_writeb (struct docg3*,int ,int ) ;

__attribute__((used)) static inline void doc_flash_address(struct docg3 *docg3, u8 addr)
{
 doc_writeb(docg3, addr, DOC_FLASHADDRESS);
}
