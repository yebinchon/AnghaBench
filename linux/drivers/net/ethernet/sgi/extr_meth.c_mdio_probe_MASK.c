#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct meth_private {int phy_addr; int /*<<< orphan*/  meth_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENODEV ; 
#define  PHY_DP83840 131 
#define  PHY_ICS1889 130 
#define  PHY_ICS1890 129 
#define  PHY_QS6612X 128 
 unsigned long FUNC1 (struct meth_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct meth_private *priv)
{
	int i;
	unsigned long p2, p3, flags;
	/* check if phy is detected already */
	if(priv->phy_addr>=0&&priv->phy_addr<32)
		return 0;
	FUNC2(&priv->meth_lock, flags);
	for (i=0;i<32;++i){
		priv->phy_addr=i;
		p2=FUNC1(priv,2);
		p3=FUNC1(priv,3);
#if MFE_DEBUG>=2
		switch ((p2<<12)|(p3>>4)){
		case PHY_QS6612X:
			DPRINTK("PHY is QS6612X\n");
			break;
		case PHY_ICS1889:
			DPRINTK("PHY is ICS1889\n");
			break;
		case PHY_ICS1890:
			DPRINTK("PHY is ICS1890\n");
			break;
		case PHY_DP83840:
			DPRINTK("PHY is DP83840\n");
			break;
		}
#endif
		if(p2!=0xffff&&p2!=0x0000){
			FUNC0("PHY code: %x\n",(p2<<12)|(p3>>4));
			break;
		}
	}
	FUNC3(&priv->meth_lock, flags);
	if(priv->phy_addr<32) {
		return 0;
	}
	FUNC0("Oopsie! PHY is not known!\n");
	priv->phy_addr=-1;
	return -ENODEV;
}