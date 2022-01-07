
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wil6210_priv {int max_assoc_sta; } ;



__attribute__((used)) static inline bool wil_cid_valid(struct wil6210_priv *wil, int cid)
{
 return (cid >= 0 && cid < wil->max_assoc_sta);
}
