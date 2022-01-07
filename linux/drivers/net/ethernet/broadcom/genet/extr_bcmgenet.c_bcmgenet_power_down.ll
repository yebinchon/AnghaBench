; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GENET_HAS_EXT = common dso_local global i32 0, align 4
@EXT_EXT_PWR_MGMT = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_EN = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_RD = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_SD = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_RX = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY_TX = common dso_local global i32 0, align 4
@EXT_IDDQ_GLBL_PWR = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_PHY = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_DLL = common dso_local global i32 0, align 4
@EXT_PWR_DOWN_BIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*, i32)* @bcmgenet_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_power_down(%struct.bcmgenet_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %68 [
    i32 130, label %8
    i32 128, label %15
    i32 129, label %19
  ]

8:                                                ; preds = %2
  %9 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @phy_detach(i32 %13)
  br label %69

15:                                               ; preds = %2
  %16 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bcmgenet_wol_power_down_cfg(%struct.bcmgenet_priv* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GENET_HAS_EXT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %19
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %30 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %31 = call i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %33 = call i32 @GENET_IS_V5(%struct.bcmgenet_priv* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load i32, i32* @EXT_PWR_DOWN_PHY_EN, align 4
  %37 = load i32, i32* @EXT_PWR_DOWN_PHY_RD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @EXT_PWR_DOWN_PHY_SD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EXT_PWR_DOWN_PHY_RX, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @EXT_PWR_DOWN_PHY_TX, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @EXT_IDDQ_GLBL_PWR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %28
  %50 = load i32, i32* @EXT_PWR_DOWN_PHY, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %35
  %54 = load i32, i32* @EXT_PWR_DOWN_DLL, align 4
  %55 = load i32, i32* @EXT_PWR_DOWN_BIAS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %62 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %59, i32 %60, i32 %61)
  %63 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %64 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i32 @bcmgenet_phy_power_set(%struct.TYPE_4__* %65, i32 0)
  br label %67

67:                                               ; preds = %53, %19
  br label %69

68:                                               ; preds = %2
  br label %69

69:                                               ; preds = %68, %67, %15, %8
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @phy_detach(i32) #1

declare dso_local i32 @bcmgenet_wol_power_down_cfg(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @GENET_IS_V5(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_phy_power_set(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
