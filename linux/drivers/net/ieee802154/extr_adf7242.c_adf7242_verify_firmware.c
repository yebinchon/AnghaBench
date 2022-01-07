
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;
struct adf7242_local {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PRAM_PAGESIZE ;
 int REG_PRAMPG ;
 int adf7242_read_fbuf (struct adf7242_local*,scalar_t__ const*,size_t,int) ;
 int adf7242_write_reg (struct adf7242_local*,int ,unsigned int) ;
 int kfree (scalar_t__ const*) ;
 scalar_t__* kmalloc (int,int ) ;

__attribute__((used)) static int adf7242_verify_firmware(struct adf7242_local *lp,
       const u8 *data, size_t len)
{
 return 0;
}
