
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 int writesb (int ,int const*,int) ;

__attribute__((used)) static void s3c2410_nand_write_buf(struct nand_chip *this, const u_char *buf,
       int len)
{
 writesb(this->legacy.IO_ADDR_W, buf, len);
}
