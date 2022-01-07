
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rcar_csi2 {int dev; } ;


 int ETIMEDOUT ;
 int PHTW_CWEN ;
 int PHTW_DWEN ;
 int PHTW_REG ;
 int PHTW_TESTDIN_CODE (int ) ;
 int PHTW_TESTDIN_DATA (int ) ;
 int dev_err (int ,char*) ;
 int rcsi2_read (struct rcar_csi2*,int ) ;
 int rcsi2_write (struct rcar_csi2*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rcsi2_phtw_write(struct rcar_csi2 *priv, u16 data, u16 code)
{
 unsigned int timeout;

 rcsi2_write(priv, PHTW_REG,
      PHTW_DWEN | PHTW_TESTDIN_DATA(data) |
      PHTW_CWEN | PHTW_TESTDIN_CODE(code));


 for (timeout = 0; timeout <= 20; timeout++) {
  if (!(rcsi2_read(priv, PHTW_REG) & (PHTW_DWEN | PHTW_CWEN)))
   return 0;

  usleep_range(1000, 2000);
 }

 dev_err(priv->dev, "Timeout waiting for PHTW_DWEN and/or PHTW_CWEN\n");

 return -ETIMEDOUT;
}
