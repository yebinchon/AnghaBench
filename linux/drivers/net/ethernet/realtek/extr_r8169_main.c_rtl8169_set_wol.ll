; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.rtl8169_private = type { i32 }
%struct.device = type { i32 }

@WAKE_ANY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @rtl8169_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %8)
  store %struct.rtl8169_private* %9, %struct.rtl8169_private** %6, align 8
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %11 = call %struct.device* @tp_to_dev(%struct.rtl8169_private* %10)
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WAKE_ANY, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = call i32 @pm_runtime_get_noresume(%struct.device* %23)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %26 = call i32 @rtl_lock_work(%struct.rtl8169_private* %25)
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %31 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = call i64 @pm_runtime_active(%struct.device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %38 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__rtl8169_set_wol(%struct.rtl8169_private* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %22
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %43 = call i32 @rtl_unlock_work(%struct.rtl8169_private* %42)
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @pm_runtime_put_noidle(%struct.device* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @tp_to_dev(%struct.rtl8169_private*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @rtl_lock_work(%struct.rtl8169_private*) #1

declare dso_local i64 @pm_runtime_active(%struct.device*) #1

declare dso_local i32 @__rtl8169_set_wol(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_unlock_work(%struct.rtl8169_private*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
