; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @net_failover_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_failover_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %5)
  store %struct.net_failover_info* %6, %struct.net_failover_info** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @netif_tx_disable(%struct.net_device* %7)
  %9 = load %struct.net_failover_info*, %struct.net_failover_info** %3, align 8
  %10 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net_device* @rtnl_dereference(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @dev_close(%struct.net_device* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.net_failover_info*, %struct.net_failover_info** %3, align 8
  %20 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net_device* @rtnl_dereference(i32 %21)
  store %struct.net_device* %22, %struct.net_device** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @dev_close(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %25, %18
  ret i32 0
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
