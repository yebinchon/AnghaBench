
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct onenand_chip {int write_bufferram; int read_bufferram; int command; int unlock_all; int bbt_wait; int wait; int write_word; int read_word; int chip_probe; } ;
struct mtd_info {struct onenand_chip* priv; } ;
struct TYPE_2__ {scalar_t__ type; void* cmd_map; int mem_addr; struct mtd_info* mtd; } ;


 int BUG () ;
 scalar_t__ TYPE_S3C6400 ;
 scalar_t__ TYPE_S3C6410 ;
 scalar_t__ TYPE_S5PC110 ;
 TYPE_1__* onenand ;
 int onenand_read_bufferram ;
 int onenand_write_bufferram ;
 int s3c6400_mem_addr ;
 int s3c6410_mem_addr ;
 void* s3c64xx_cmd_map ;
 int s3c_onenand_bbt_wait ;
 int s3c_onenand_command ;
 int s3c_onenand_readw ;
 int s3c_onenand_wait ;
 int s3c_onenand_writew ;
 int s3c_unlock_all ;
 int s5pc110_chip_probe ;
 int s5pc110_read_bufferram ;

__attribute__((used)) static void s3c_onenand_setup(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;

 onenand->mtd = mtd;

 if (onenand->type == TYPE_S3C6400) {
  onenand->mem_addr = s3c6400_mem_addr;
  onenand->cmd_map = s3c64xx_cmd_map;
 } else if (onenand->type == TYPE_S3C6410) {
  onenand->mem_addr = s3c6410_mem_addr;
  onenand->cmd_map = s3c64xx_cmd_map;
 } else if (onenand->type == TYPE_S5PC110) {

  this->read_bufferram = s5pc110_read_bufferram;
  this->chip_probe = s5pc110_chip_probe;
  return;
 } else {
  BUG();
 }

 this->read_word = s3c_onenand_readw;
 this->write_word = s3c_onenand_writew;

 this->wait = s3c_onenand_wait;
 this->bbt_wait = s3c_onenand_bbt_wait;
 this->unlock_all = s3c_unlock_all;
 this->command = s3c_onenand_command;

 this->read_bufferram = onenand_read_bufferram;
 this->write_bufferram = onenand_write_bufferram;
}
