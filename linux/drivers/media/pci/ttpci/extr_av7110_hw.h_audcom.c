
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct av7110 {int dummy; } ;


 int AV7110_FW_AUDIO_COMMAND ;
 int COMTYPE_MISC ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int,int,int) ;

__attribute__((used)) static inline int audcom(struct av7110 *av7110, u32 com)
{
 return av7110_fw_cmd(av7110, COMTYPE_MISC, AV7110_FW_AUDIO_COMMAND, 2,
        (com>>16), (com&0xffff));
}
