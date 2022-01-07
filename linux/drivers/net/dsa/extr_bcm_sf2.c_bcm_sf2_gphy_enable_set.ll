; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_gphy_enable_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_gphy_enable_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32 }

@REG_SPHY_CNTRL = common dso_local global i32 0, align 4
@PHY_RESET = common dso_local global i32 0, align 4
@EXT_PWR_DOWN = common dso_local global i32 0, align 4
@IDDQ_BIAS = common dso_local global i32 0, align 4
@IDDQ_GLOBAL_PWR = common dso_local global i32 0, align 4
@CK25_DIS = common dso_local global i32 0, align 4
@SPDLNK_SRC_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @bcm_sf2_gphy_enable_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_gphy_enable_set(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sf2_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %7)
  store %struct.bcm_sf2_priv* %8, %struct.bcm_sf2_priv** %5, align 8
  %9 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %10 = load i32, i32* @REG_SPHY_CNTRL, align 4
  %11 = call i32 @reg_readl(%struct.bcm_sf2_priv* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load i32, i32* @PHY_RESET, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @EXT_PWR_DOWN, align 4
  %19 = load i32, i32* @IDDQ_BIAS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IDDQ_GLOBAL_PWR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CK25_DIS, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @REG_SPHY_CNTRL, align 4
  %31 = call i32 @reg_writel(%struct.bcm_sf2_priv* %28, i32 %29, i32 %30)
  %32 = call i32 @udelay(i32 21)
  %33 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %34 = load i32, i32* @REG_SPHY_CNTRL, align 4
  %35 = call i32 @reg_readl(%struct.bcm_sf2_priv* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @PHY_RESET, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %56

40:                                               ; preds = %2
  %41 = load i32, i32* @EXT_PWR_DOWN, align 4
  %42 = load i32, i32* @IDDQ_BIAS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PHY_RESET, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @REG_SPHY_CNTRL, align 4
  %51 = call i32 @reg_writel(%struct.bcm_sf2_priv* %48, i32 %49, i32 %50)
  %52 = call i32 @mdelay(i32 1)
  %53 = load i32, i32* @CK25_DIS, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %40, %14
  %57 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @REG_SPHY_CNTRL, align 4
  %60 = call i32 @reg_writel(%struct.bcm_sf2_priv* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %56
  %64 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %65 = call i32 @REG_LED_CNTRL(i32 0)
  %66 = call i32 @reg_readl(%struct.bcm_sf2_priv* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @SPDLNK_SRC_SEL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @REG_LED_CNTRL(i32 0)
  %73 = call i32 @reg_writel(%struct.bcm_sf2_priv* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %56
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @reg_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @reg_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @REG_LED_CNTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
