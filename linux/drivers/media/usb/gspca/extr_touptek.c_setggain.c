
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int D_STREAM ;
 int REG_GREEN1_GAIN ;
 int REG_GREEN2_GAIN ;
 int gainify (int ) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,int ) ;
 int reg_w (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static void setggain(struct gspca_dev *gspca_dev, u16 global_gain)
{
 u16 normalized;

 normalized = gainify(global_gain);
 gspca_dbg(gspca_dev, D_STREAM, "gain G1/G2 (0x%04X): 0x%04X (src 0x%04X)\n\n",
    REG_GREEN1_GAIN,
    normalized, global_gain);

 reg_w(gspca_dev, normalized, REG_GREEN1_GAIN);
 reg_w(gspca_dev, normalized, REG_GREEN2_GAIN);
}
