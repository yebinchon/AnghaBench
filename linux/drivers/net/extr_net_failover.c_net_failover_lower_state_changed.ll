; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_lower_state_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_lower_state_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_lag_lower_state_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.net_device*, %struct.net_device*)* @net_failover_lower_state_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_failover_lower_state_changed(%struct.net_device* %0, %struct.net_device* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdev_lag_lower_state_info, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i64 @netif_carrier_ok(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %7, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %15

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %7, i32 0, i32 0
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = icmp eq %struct.net_device* %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i64 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %7, i32 0, i32 1
  store i32 1, i32* %24, align 4
  br label %27

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %7, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %44

28:                                               ; preds = %15
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i64 @netif_running(%struct.net_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %28
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i64 @netif_running(%struct.net_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %7, i32 0, i32 1
  store i32 0, i32* %40, align 4
  br label %43

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.netdev_lag_lower_state_info, %struct.netdev_lag_lower_state_info* %7, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @netdev_lower_state_changed(%struct.net_device* %45, %struct.netdev_lag_lower_state_info* %7)
  ret void
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_lower_state_changed(%struct.net_device*, %struct.netdev_lag_lower_state_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
