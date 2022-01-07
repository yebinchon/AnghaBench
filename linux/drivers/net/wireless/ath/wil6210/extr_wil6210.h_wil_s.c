
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil6210_priv {int dummy; } ;


 int wil_r (struct wil6210_priv*,int) ;
 int wil_w (struct wil6210_priv*,int,int) ;

__attribute__((used)) static inline void wil_s(struct wil6210_priv *wil, u32 reg, u32 val)
{
 wil_w(wil, reg, wil_r(wil, reg) | val);
}
