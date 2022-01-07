
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmi {int curfreq; } ;


 int RSF16_MAXFREQ ;
 int RSF16_MINFREQ ;
 int clamp (int,int ,int ) ;
 int fmi_set_pins ;
 int lm7000_set_freq (int,struct fmi*,int ) ;

__attribute__((used)) static void fmi_set_freq(struct fmi *fmi)
{
 fmi->curfreq = clamp(fmi->curfreq, RSF16_MINFREQ, RSF16_MAXFREQ);


 lm7000_set_freq((fmi->curfreq / 800) * 800, fmi, fmi_set_pins);
}
