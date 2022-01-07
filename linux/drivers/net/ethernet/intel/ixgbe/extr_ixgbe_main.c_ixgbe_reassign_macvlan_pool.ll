; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reassign_macvlan_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_reassign_macvlan_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32 }
%struct.ixgbe_fwd_adapter = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"L2FW offload disabled due to lack of queue resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ixgbe_reassign_macvlan_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_reassign_macvlan_pool(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_fwd_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ixgbe_adapter*
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_is_macvlan(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.ixgbe_fwd_adapter* @macvlan_accel_priv(%struct.net_device* %16)
  store %struct.ixgbe_fwd_adapter* %17, %struct.ixgbe_fwd_adapter** %7, align 8
  %18 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %7, align 8
  %19 = icmp ne %struct.ixgbe_fwd_adapter* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %57

21:                                               ; preds = %15
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @find_first_zero_bit(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_bit(i32 %35, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.ixgbe_fwd_adapter, %struct.ixgbe_fwd_adapter* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %57

43:                                               ; preds = %21
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = call i32 @macvlan_release_l2fw_offload(%struct.net_device* %46)
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netdev_unbind_sb_channel(i32 %50, %struct.net_device* %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @netdev_set_sb_channel(%struct.net_device* %53, i32 0)
  %55 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %7, align 8
  %56 = call i32 @kfree(%struct.ixgbe_fwd_adapter* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %43, %34, %20, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local %struct.ixgbe_fwd_adapter* @macvlan_accel_priv(%struct.net_device*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @macvlan_release_l2fw_offload(%struct.net_device*) #1

declare dso_local i32 @netdev_unbind_sb_channel(i32, %struct.net_device*) #1

declare dso_local i32 @netdev_set_sb_channel(%struct.net_device*, i32) #1

declare dso_local i32 @kfree(%struct.ixgbe_fwd_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
