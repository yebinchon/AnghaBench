
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int dummy; } ;


 int COMTYPE_AUDIODAC ;
 int OFF22K ;
 int ON22K ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int ) ;

__attribute__((used)) static inline int Set22K(struct av7110 *av7110, int state)
{
 return av7110_fw_cmd(av7110, COMTYPE_AUDIODAC, (state ? ON22K : OFF22K), 0);
}
