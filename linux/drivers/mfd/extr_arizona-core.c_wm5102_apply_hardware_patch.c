
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_sysclk_state {int dummy; } ;
struct arizona {int regmap; int dev; } ;


 int ARIZONA_WRITE_SEQUENCER_CTRL_0 ;
 int ARIZONA_WRITE_SEQUENCER_CTRL_1 ;
 int ARIZONA_WSEQ_ABORT ;
 int ARIZONA_WSEQ_BUSY ;
 int ARIZONA_WSEQ_ENA ;
 int ARIZONA_WSEQ_START ;
 int arizona_disable_freerun_sysclk (struct arizona*,struct arizona_sysclk_state*) ;
 int arizona_enable_freerun_sysclk (struct arizona*,struct arizona_sysclk_state*) ;
 int arizona_poll_reg (struct arizona*,int,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int wm5102_apply_hardware_patch(struct arizona *arizona)
{
 struct arizona_sysclk_state state;
 int err, ret;

 ret = arizona_enable_freerun_sysclk(arizona, &state);
 if (ret)
  return ret;


 ret = regmap_write(arizona->regmap, ARIZONA_WRITE_SEQUENCER_CTRL_0,
      ARIZONA_WSEQ_ENA | ARIZONA_WSEQ_START | 160);
 if (ret) {
  dev_err(arizona->dev, "Failed to start write sequencer: %d\n",
   ret);
  goto err;
 }

 ret = arizona_poll_reg(arizona, 30, ARIZONA_WRITE_SEQUENCER_CTRL_1,
          ARIZONA_WSEQ_BUSY, 0);
 if (ret)
  regmap_write(arizona->regmap, ARIZONA_WRITE_SEQUENCER_CTRL_0,
        ARIZONA_WSEQ_ABORT);

err:
 err = arizona_disable_freerun_sysclk(arizona, &state);

 return ret ?: err;
}
