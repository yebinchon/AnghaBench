; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, %struct.TYPE_4__*, i64, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"MTU cannot be changed while XDP program is loaded\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbevf_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbevf_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbevf_adapter* %11, %struct.ixgbevf_adapter** %6, align 8
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 3
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ETH_HLEN, align 4
  %16 = add nsw i32 %14, %15
  %17 = load i32, i32* @ETH_FCS_LEN, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %2
  %32 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %32, i32 0, i32 0
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %36 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %38, align 8
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %41 = bitcast %struct.ixgbe_hw* %40 to %struct.ixgbe_hw.0*
  %42 = load i32, i32* %8, align 4
  %43 = call i32 %39(%struct.ixgbe_hw.0* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %31
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %31
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @hw_dbg(%struct.ixgbe_hw* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i64 @netif_running(%struct.net_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %67 = call i32 @ixgbevf_reinit_locked(%struct.ixgbevf_adapter* %66)
  br label %68

68:                                               ; preds = %65, %52
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %49, %23
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_reinit_locked(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
