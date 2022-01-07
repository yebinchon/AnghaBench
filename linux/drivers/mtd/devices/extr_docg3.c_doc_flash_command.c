
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct docg3 {int dummy; } ;


 int DOC_FLASHCOMMAND ;
 int doc_writeb (struct docg3*,int ,int ) ;

__attribute__((used)) static inline void doc_flash_command(struct docg3 *docg3, u8 cmd)
{
 doc_writeb(docg3, cmd, DOC_FLASHCOMMAND);
}
