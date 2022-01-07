
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct solo_dev {scalar_t__ nr_chans; } ;


 int SOLO_VI_WIN_CHANNEL (scalar_t__) ;
 int SOLO_VI_WIN_CTRL0 (scalar_t__) ;
 int SOLO_VI_WIN_CTRL1 (scalar_t__) ;
 int SOLO_VI_WIN_EX (int) ;
 int SOLO_VI_WIN_EY (int) ;
 int SOLO_VI_WIN_SCALE (int) ;
 int SOLO_VI_WIN_SX (int) ;
 int SOLO_VI_WIN_SY (int) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;

__attribute__((used)) static void solo_win_setup(struct solo_dev *solo_dev, u8 ch,
      int sx, int sy, int ex, int ey, int scale)
{
 if (ch >= solo_dev->nr_chans)
  return;


 solo_reg_write(solo_dev, SOLO_VI_WIN_CTRL0(ch),
         SOLO_VI_WIN_CHANNEL(ch) |
         SOLO_VI_WIN_SX(sx) |
         SOLO_VI_WIN_EX(ex) |
         SOLO_VI_WIN_SCALE(scale));

 solo_reg_write(solo_dev, SOLO_VI_WIN_CTRL1(ch),
         SOLO_VI_WIN_SY(sy) |
         SOLO_VI_WIN_EY(ey));
}
