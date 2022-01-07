; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netvsc_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_context*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %6)
  store %struct.net_device_context* %7, %struct.net_device_context** %3, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %10 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @rcu_dereference(i32 %11)
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @dev_uc_sync(%struct.net_device* %17, %struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @dev_mc_sync(%struct.net_device* %20, %struct.net_device* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %25 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @rcu_dereference(i32 %26)
  %28 = bitcast i8* %27 to %struct.netvsc_device*
  store %struct.netvsc_device* %28, %struct.netvsc_device** %5, align 8
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %30 = icmp ne %struct.netvsc_device* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %33 = call i32 @rndis_filter_update(%struct.netvsc_device* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @dev_uc_sync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_sync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @rndis_filter_update(%struct.netvsc_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
