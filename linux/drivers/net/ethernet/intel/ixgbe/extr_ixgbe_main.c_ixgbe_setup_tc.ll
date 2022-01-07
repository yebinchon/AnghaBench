; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, i32, i32, %struct.ixgbe_hw, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@ixgbe_fc_none = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_tc(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %10, i32 0, i32 5
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %12, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @MAX_TRAFFIC_CLASS, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %32, %29, %22
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i64 @netif_running(%struct.net_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @ixgbe_close(%struct.net_device* %44)
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %48 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %51 = call i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter* %50)
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %53 = call i32 @ixgbe_init_interrupt_scheme(%struct.ixgbe_adapter* %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i32 @ixgbe_defrag_macvlan_pools(%struct.net_device* %54)
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i64 @netif_running(%struct.net_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @ixgbe_open(%struct.net_device* %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %36, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_close(%struct.net_device*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_init_interrupt_scheme(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_defrag_macvlan_pools(%struct.net_device*) #1

declare dso_local i32 @ixgbe_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
