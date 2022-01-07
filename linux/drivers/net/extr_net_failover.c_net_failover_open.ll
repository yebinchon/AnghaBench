; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @net_failover_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_failover_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %8)
  store %struct.net_failover_info* %9, %struct.net_failover_info** %4, align 8
  %10 = load %struct.net_failover_info*, %struct.net_failover_info** %4, align 8
  %11 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net_device* @rtnl_dereference(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @dev_open(%struct.net_device* %17, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %60

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.net_failover_info*, %struct.net_failover_info** %4, align 8
  %25 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.net_device* @rtnl_dereference(i32 %26)
  store %struct.net_device* %27, %struct.net_device** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = call i32 @dev_open(%struct.net_device* %31, i32* null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %57

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = icmp ne %struct.net_device* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = call i64 @net_failover_xmit_ready(%struct.net_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i64 @net_failover_xmit_ready(%struct.net_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47, %40
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netif_carrier_on(%struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %54)
  br label %56

56:                                               ; preds = %51, %47, %44
  store i32 0, i32* %2, align 4
  br label %64

57:                                               ; preds = %35
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @dev_close(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %57, %21
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @netif_tx_disable(%struct.net_device* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

declare dso_local i64 @net_failover_xmit_ready(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
