
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {size_t erp_mode; } ;
typedef int ssize_t ;


 int ADD (char*,int ,size_t,char*,size_t,int ) ;
 int * erp_modes ;

__attribute__((used)) static char *carl9170_debugfs_erp_read(struct ar9170 *ar, char *buf,
           size_t bufsize, ssize_t *ret)
{
 ADD(buf, *ret, bufsize, "ERP Setting: (%d) -> %s\n", ar->erp_mode,
     erp_modes[ar->erp_mode]);
 return buf;
}
