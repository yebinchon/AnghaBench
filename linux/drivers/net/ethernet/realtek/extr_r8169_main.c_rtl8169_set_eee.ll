; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ethtool_eee = type { i32 }
%struct.rtl8169_private = type { i32 }
%struct.device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @rtl8169_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %9)
  store %struct.rtl8169_private* %10, %struct.rtl8169_private** %6, align 8
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %12 = call %struct.device* @tp_to_dev(%struct.rtl8169_private* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %14 = call i32 @rtl_supports_eee(%struct.rtl8169_private* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = call i32 @pm_runtime_get_noresume(%struct.device* %20)
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = call i32 @pm_runtime_active(%struct.device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %53

28:                                               ; preds = %19
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AUTONEG_DISABLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DUPLEX_FULL, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36, %28
  %45 = load i32, i32* @EPROTONOSUPPORT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %53

47:                                               ; preds = %36
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %49 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %52 = call i32 @phy_ethtool_set_eee(i32 %50, %struct.ethtool_eee* %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %44, %25
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = call i32 @pm_runtime_put_noidle(%struct.device* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_supports_eee(%struct.rtl8169_private*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_active(%struct.device*) #1

declare dso_local i32 @phy_ethtool_set_eee(i32, %struct.ethtool_eee*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
