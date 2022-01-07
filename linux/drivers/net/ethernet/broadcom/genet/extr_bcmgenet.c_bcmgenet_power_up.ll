; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GENET_HAS_EXT = common dso_local global i32 0, align 4
@EXT_EXT_PWR_MGMT = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_DLL = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_BIAS = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_EN = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_RD = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_SD = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_RX = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_TX = common dso_local global i32 0, align 4
@EXT_IDDQ_GLBL_PWR = common dso_local global i32 0, align 4
@EXT_PHY_RESET = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY = common dso_local global i32 0, align 4
@EXT_PWR_DN_EN_LD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*, i32)* @bcmgenet_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_power_up(%struct.bcmgenet_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %7 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GENET_HAS_EXT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %17 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %18 = call i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %91 [
    i32 129, label %20
    i32 130, label %74
    i32 128, label %87
  ]

20:                                               ; preds = %15
  %21 = load i32, i32* @EXT_PWR_DOWN_DLL, align 4
  %22 = load i32, i32* @EXT_PWR_DOWN_BIAS, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %28 = call i32 @GENET_IS_V5(%struct.bcmgenet_priv* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %20
  %31 = load i32, i32* @EXT_PWR_DOWN_PHY_EN, align 4
  %32 = load i32, i32* @EXT_PWR_DOWN_PHY_RD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @EXT_PWR_DOWN_PHY_SD, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EXT_PWR_DOWN_PHY_RX, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EXT_PWR_DOWN_PHY_TX, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @EXT_IDDQ_GLBL_PWR, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @EXT_PHY_RESET, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %51 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %48, i32 %49, i32 %50)
  %52 = call i32 @mdelay(i32 1)
  %53 = load i32, i32* @EXT_PHY_RESET, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %20
  %58 = load i32, i32* @EXT_PWR_DOWN_PHY, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %5, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @EXT_PWR_DN_EN_LD, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %30
  %66 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %69 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %66, i32 %67, i32 %68)
  %70 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %71 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @bcmgenet_phy_power_set(i32 %72, i32 1)
  br label %92

74:                                               ; preds = %15
  %75 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %76 = call i32 @GENET_IS_V5(%struct.bcmgenet_priv* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @EXT_PWR_DN_EN_LD, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %85 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %74
  br label %92

87:                                               ; preds = %15
  %88 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @bcmgenet_wol_power_up_cfg(%struct.bcmgenet_priv* %88, i32 %89)
  br label %92

91:                                               ; preds = %15
  br label %92

92:                                               ; preds = %14, %87, %91, %86, %65
  ret void
}

declare dso_local i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @GENET_IS_V5(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @bcmgenet_phy_power_set(i32, i32) #1

declare dso_local i32 @bcmgenet_wol_power_up_cfg(%struct.bcmgenet_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
