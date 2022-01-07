
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct av7110 {int dummy; } ;


 int AudioDAC ;
 int COMTYPE_AUDIODAC ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int,int ,int ) ;

__attribute__((used)) static inline int SendDAC(struct av7110 *av7110, u8 addr, u8 data)
{
 return av7110_fw_cmd(av7110, COMTYPE_AUDIODAC, AudioDAC, 2, addr, data);
}
