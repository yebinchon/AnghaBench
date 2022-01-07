
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_csi2_format {unsigned int code; } ;


 unsigned int ARRAY_SIZE (struct rcar_csi2_format const*) ;
 struct rcar_csi2_format const* rcar_csi2_formats ;

__attribute__((used)) static const struct rcar_csi2_format *rcsi2_code_to_fmt(unsigned int code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(rcar_csi2_formats); i++)
  if (rcar_csi2_formats[i].code == code)
   return &rcar_csi2_formats[i];

 return ((void*)0);
}
