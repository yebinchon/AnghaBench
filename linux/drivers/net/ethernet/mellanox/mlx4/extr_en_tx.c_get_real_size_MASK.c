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
struct skb_shared_info {int nr_frags; scalar_t__ gso_size; } ;
struct sk_buff {int data; scalar_t__ encapsulation; } ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* prof; } ;
struct TYPE_2__ {int /*<<< orphan*/  inline_thold; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int CTRL_SIZE ; 
 int DS_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (struct sk_buff const*) ; 
 int FUNC3 (struct sk_buff const*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff const*,struct skb_shared_info const*,void**) ; 
 struct mlx4_en_priv* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct mlx4_en_priv*) ; 
 int FUNC7 (struct sk_buff const*) ; 
 int FUNC8 (struct sk_buff const*) ; 
 int FUNC9 (struct sk_buff const*) ; 
 int FUNC10 (struct sk_buff const*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(const struct sk_buff *skb,
			 const struct skb_shared_info *shinfo,
			 struct net_device *dev,
			 int *lso_header_size,
			 bool *inline_ok,
			 void **pfrag)
{
	struct mlx4_en_priv *priv = FUNC5(dev);
	int real_size;

	if (shinfo->gso_size) {
		*inline_ok = false;
		if (skb->encapsulation)
			*lso_header_size = (FUNC8(skb) - skb->data) + FUNC3(skb);
		else
			*lso_header_size = FUNC9(skb) + FUNC10(skb);
		real_size = CTRL_SIZE + shinfo->nr_frags * DS_SIZE +
			FUNC0(*lso_header_size + 4, DS_SIZE);
		if (FUNC11(*lso_header_size != FUNC7(skb))) {
			/* We add a segment for the skb linear buffer only if
			 * it contains data */
			if (*lso_header_size < FUNC7(skb))
				real_size += DS_SIZE;
			else {
				if (FUNC6(priv))
					FUNC1(priv, "Non-linear headers\n");
				return 0;
			}
		}
	} else {
		*lso_header_size = 0;
		*inline_ok = FUNC4(priv->prof->inline_thold, skb,
				       shinfo, pfrag);

		if (*inline_ok)
			real_size = FUNC2(skb);
		else
			real_size = CTRL_SIZE +
				    (shinfo->nr_frags + 1) * DS_SIZE;
	}

	return real_size;
}