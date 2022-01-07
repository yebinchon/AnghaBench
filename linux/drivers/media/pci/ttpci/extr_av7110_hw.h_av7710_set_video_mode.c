
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av7110 {int dummy; } ;


 int COMTYPE_ENCODER ;
 int SetVidMode ;
 int av7110_fw_cmd (struct av7110*,int ,int ,int,int) ;

__attribute__((used)) static inline int av7710_set_video_mode(struct av7110 *av7110, int mode)
{
 return av7110_fw_cmd(av7110, COMTYPE_ENCODER, SetVidMode, 1, mode);
}
