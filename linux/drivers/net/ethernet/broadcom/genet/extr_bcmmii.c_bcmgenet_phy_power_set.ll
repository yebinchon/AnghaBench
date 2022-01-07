; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_phy_power_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_phy_power_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { i32 }

@EXT_GPHY_CTRL = common dso_local global i32 0, align 4
@EXT_CK25_DIS = common dso_local global i32 0, align 4
@EXT_CFG_IDDQ_BIAS = common dso_local global i32 0, align 4
@EXT_CFG_PWR_DOWN = common dso_local global i32 0, align 4
@EXT_GPHY_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcmgenet_phy_power_set(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcmgenet_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.bcmgenet_priv* %8, %struct.bcmgenet_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %10 = call i64 @GENET_IS_V4(%struct.bcmgenet_priv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %68

12:                                               ; preds = %2
  %13 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %14 = load i32, i32* @EXT_GPHY_CTRL, align 4
  %15 = call i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = load i32, i32* @EXT_CK25_DIS, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @EXT_GPHY_CTRL, align 4
  %26 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %23, i32 %24, i32 %25)
  %27 = call i32 @mdelay(i32 1)
  %28 = load i32, i32* @EXT_CFG_IDDQ_BIAS, align 4
  %29 = load i32, i32* @EXT_CFG_PWR_DOWN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @EXT_GPHY_RESET, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @EXT_GPHY_CTRL, align 4
  %40 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %37, i32 %38, i32 %39)
  %41 = call i32 @mdelay(i32 1)
  %42 = load i32, i32* @EXT_GPHY_RESET, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %62

46:                                               ; preds = %12
  %47 = load i32, i32* @EXT_CFG_IDDQ_BIAS, align 4
  %48 = load i32, i32* @EXT_CFG_PWR_DOWN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @EXT_GPHY_RESET, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @EXT_GPHY_CTRL, align 4
  %57 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %54, i32 %55, i32 %56)
  %58 = call i32 @mdelay(i32 1)
  %59 = load i32, i32* @EXT_CK25_DIS, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %46, %18
  %63 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @EXT_GPHY_CTRL, align 4
  %66 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %63, i32 %64, i32 %65)
  %67 = call i32 @udelay(i32 60)
  br label %70

68:                                               ; preds = %2
  %69 = call i32 @mdelay(i32 1)
  br label %70

70:                                               ; preds = %68, %62
  ret void
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @GENET_IS_V4(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
