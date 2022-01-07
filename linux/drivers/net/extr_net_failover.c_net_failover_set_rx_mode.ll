; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @net_failover_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_failover_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_failover_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %5)
  store %struct.net_failover_info* %6, %struct.net_failover_info** %3, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.net_failover_info*, %struct.net_failover_info** %3, align 8
  %9 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net_device* @rcu_dereference(i32 %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @dev_uc_sync_multiple(%struct.net_device* %15, %struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = call i32 @dev_mc_sync_multiple(%struct.net_device* %18, %struct.net_device* %19)
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.net_failover_info*, %struct.net_failover_info** %3, align 8
  %23 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net_device* @rcu_dereference(i32 %24)
  store %struct.net_device* %25, %struct.net_device** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @dev_uc_sync_multiple(%struct.net_device* %29, %struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @dev_mc_sync_multiple(%struct.net_device* %32, %struct.net_device* %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i32 @dev_uc_sync_multiple(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_sync_multiple(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
