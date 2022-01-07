; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_macvlan_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_macvlan_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32 }
%struct.ixgbe_fwd_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ixgbe_macvlan_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_macvlan_up(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_fwd_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ixgbe_adapter*
  store %struct.ixgbe_adapter* %9, %struct.ixgbe_adapter** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @netif_is_macvlan(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.ixgbe_fwd_adapter* @macvlan_accel_priv(%struct.net_device* %15)
  store %struct.ixgbe_fwd_adapter* %16, %struct.ixgbe_fwd_adapter** %7, align 8
  %17 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %7, align 8
  %18 = icmp ne %struct.ixgbe_fwd_adapter* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %22 = load %struct.ixgbe_fwd_adapter*, %struct.ixgbe_fwd_adapter** %7, align 8
  %23 = call i32 @ixgbe_fwd_ring_up(%struct.ixgbe_adapter* %21, %struct.ixgbe_fwd_adapter* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %19, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @netif_is_macvlan(%struct.net_device*) #1

declare dso_local %struct.ixgbe_fwd_adapter* @macvlan_accel_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_fwd_ring_up(%struct.ixgbe_adapter*, %struct.ixgbe_fwd_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
