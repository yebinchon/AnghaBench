; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.failover = type { i32 }
%struct.net_failover_info = type { i32, i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_failover_destroy(%struct.failover* %0) #0 {
  %2 = alloca %struct.failover*, align 8
  %3 = alloca %struct.net_failover_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.failover* %0, %struct.failover** %2, align 8
  %6 = load %struct.failover*, %struct.failover** %2, align 8
  %7 = icmp ne %struct.failover* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.failover*, %struct.failover** %2, align 8
  %11 = getelementptr inbounds %struct.failover, %struct.failover* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.net_device* @rcu_dereference(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %14)
  store %struct.net_failover_info* %15, %struct.net_failover_info** %3, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_device_detach(%struct.net_device* %16)
  %18 = call i32 (...) @rtnl_lock()
  %19 = load %struct.net_failover_info*, %struct.net_failover_info** %3, align 8
  %20 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net_device* @rtnl_dereference(i32 %21)
  store %struct.net_device* %22, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %9
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @failover_slave_unregister(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %25, %9
  %29 = load %struct.net_failover_info*, %struct.net_failover_info** %3, align 8
  %30 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.net_device* @rtnl_dereference(i32 %31)
  store %struct.net_device* %32, %struct.net_device** %5, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @failover_slave_unregister(%struct.net_device* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.failover*, %struct.failover** %2, align 8
  %40 = call i32 @failover_unregister(%struct.failover* %39)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @unregister_netdevice(%struct.net_device* %41)
  %43 = call i32 (...) @rtnl_unlock()
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @free_netdev(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %38, %8
  ret void
}

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @failover_slave_unregister(%struct.net_device*) #1

declare dso_local i32 @failover_unregister(%struct.failover*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
