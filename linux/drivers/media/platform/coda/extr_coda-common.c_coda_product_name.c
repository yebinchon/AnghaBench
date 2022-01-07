
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;






 int snprintf (char*,int,char*,int) ;

const char *coda_product_name(int product)
{
 static char buf[9];

 switch (product) {
 case 129:
  return "CodaDx6";
 case 128:
  return "CodaHx4";
 case 131:
  return "CODA7541";
 case 130:
  return "CODA960";
 default:
  snprintf(buf, sizeof(buf), "(0x%04x)", product);
  return buf;
 }
}
