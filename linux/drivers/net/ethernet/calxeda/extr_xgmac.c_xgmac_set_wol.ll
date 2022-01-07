; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_xgmac_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.xgmac_priv = type { i32, i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @xgmac_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmac_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.xgmac_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.xgmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.xgmac_priv* %9, %struct.xgmac_priv** %6, align 8
  %10 = load i32, i32* @WAKE_MAGIC, align 4
  %11 = load i32, i32* @WAKE_UCAST, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %14 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_can_wakeup(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %21
  %33 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %37 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %44 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_set_wakeup_enable(i32 %45, i32 1)
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @enable_irq_wake(i32 %49)
  br label %60

51:                                               ; preds = %32
  %52 = load %struct.xgmac_priv*, %struct.xgmac_priv** %6, align 8
  %53 = getelementptr inbounds %struct.xgmac_priv, %struct.xgmac_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @device_set_wakeup_enable(i32 %54, i32 0)
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @disable_irq_wake(i32 %58)
  br label %60

60:                                               ; preds = %51, %42
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %29, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.xgmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @device_can_wakeup(i32) #1

declare dso_local i32 @device_set_wakeup_enable(i32, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
