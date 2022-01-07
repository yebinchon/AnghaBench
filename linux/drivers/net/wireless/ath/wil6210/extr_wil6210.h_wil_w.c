
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wil6210_priv {scalar_t__ csr; } ;


 scalar_t__ HOSTADDR (int ) ;
 int wmb () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void wil_w(struct wil6210_priv *wil, u32 reg, u32 val)
{
 writel(val, wil->csr + HOSTADDR(reg));
 wmb();
}
