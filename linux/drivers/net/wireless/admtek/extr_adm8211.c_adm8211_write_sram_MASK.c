#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ADM8211_REV_BA ; 
 int ADM8211_WEPCTL_SEL_WEPTABLE ; 
 int ADM8211_WEPCTL_TABLE_WR ; 
 int /*<<< orphan*/  WEPCTL ; 
 int /*<<< orphan*/  WESK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct ieee80211_hw *dev,
				      u32 addr, u32 data)
{
	struct adm8211_priv *priv = dev->priv;

	FUNC1(WEPCTL, addr | ADM8211_WEPCTL_TABLE_WR |
			  (priv->pdev->revision < ADM8211_REV_BA ?
			   0 : ADM8211_WEPCTL_SEL_WEPTABLE ));
	FUNC0(WEPCTL);
	FUNC2(1);

	FUNC1(WESK, data);
	FUNC0(WESK);
	FUNC2(1);
}