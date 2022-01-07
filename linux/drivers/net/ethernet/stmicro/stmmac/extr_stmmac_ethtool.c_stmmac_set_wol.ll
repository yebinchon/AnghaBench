; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_ethtool.c_stmmac_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.stmmac_priv = type { i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"stmmac: wakeup enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @stmmac_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.stmmac_priv* %9, %struct.stmmac_priv** %6, align 8
  %10 = load i32, i32* @WAKE_MAGIC, align 4
  %11 = load i32, i32* @WAKE_UCAST, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @WAKE_MAGIC, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %17, %2
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_can_wakeup(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %30
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %86

50:                                               ; preds = %39
  %51 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %58 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_set_wakeup_enable(i32 %59, i32 1)
  %61 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %62 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @enable_irq_wake(i32 %63)
  br label %74

65:                                               ; preds = %50
  %66 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %67 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_set_wakeup_enable(i32 %68, i32 0)
  %70 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %71 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @disable_irq_wake(i32 %72)
  br label %74

74:                                               ; preds = %65, %55
  %75 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %76 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %75, i32 0, i32 1
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %82 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %84 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %74, %47, %36
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_can_wakeup(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @device_set_wakeup_enable(i32, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
