
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cphy {int adapter; } ;


 int A_ELMER0_INT_ENABLE ;
 int ELMER0_GP_BIT1 ;
 int ELMER0_GP_BIT2 ;
 int ELMER0_GP_BIT3 ;
 int ELMER0_GP_BIT4 ;
 int MV88E1XXX_INTERRUPT_ENABLE_REGISTER ;
 scalar_t__ is_T2 (int ) ;
 int simple_mdio_write (struct cphy*,int ,int ) ;
 scalar_t__ t1_is_asic (int ) ;
 int t1_tpi_read (int ,int ,int*) ;
 int t1_tpi_write (int ,int ,int) ;

__attribute__((used)) static int mv88e1xxx_interrupt_disable(struct cphy *cphy)
{

 (void) simple_mdio_write(cphy, MV88E1XXX_INTERRUPT_ENABLE_REGISTER, 0);


 if (t1_is_asic(cphy->adapter)) {
  u32 elmer;

  t1_tpi_read(cphy->adapter, A_ELMER0_INT_ENABLE, &elmer);
  elmer &= ~ELMER0_GP_BIT1;
  if (is_T2(cphy->adapter))
      elmer &= ~(ELMER0_GP_BIT2|ELMER0_GP_BIT3|ELMER0_GP_BIT4);
  t1_tpi_write(cphy->adapter, A_ELMER0_INT_ENABLE, elmer);
 }
 return 0;
}
