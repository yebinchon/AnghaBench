
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fpga_internal {int (* fpga_rw ) (int ,int ,int,int) ;int dev; } ;


 int NETUP_CI_FLG_AD ;
 int stub1 (int ,int ,int,int) ;
 int stub2 (int ,int ,int,int) ;

__attribute__((used)) static int netup_fpga_op_rw(struct fpga_internal *inter, int addr,
       u8 val, u8 read)
{
 inter->fpga_rw(inter->dev, NETUP_CI_FLG_AD, addr, 0);
 return inter->fpga_rw(inter->dev, 0, val, read);
}
