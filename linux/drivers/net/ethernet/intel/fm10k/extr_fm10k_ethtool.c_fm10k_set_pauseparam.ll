; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_ethtool.c_fm10k_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i32, i64 }
%struct.fm10k_intfc = type { i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@fm10k_mac_pf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @fm10k_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca %struct.fm10k_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %8)
  store %struct.fm10k_intfc* %9, %struct.fm10k_intfc** %6, align 8
  %10 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %11 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %10, i32 0, i32 1
  store %struct.fm10k_hw* %11, %struct.fm10k_hw** %7, align 8
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %16
  %25 = load %struct.fm10k_hw*, %struct.fm10k_hw** %7, align 8
  %26 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @fm10k_mac_pf, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 -1, i32 0
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %39 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %49

40:                                               ; preds = %24
  %41 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %57

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i64 @netif_running(%struct.net_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %55 = call i32 @fm10k_update_rx_drop_en(%struct.fm10k_intfc* %54)
  br label %56

56:                                               ; preds = %53, %49
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %45, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @fm10k_update_rx_drop_en(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
