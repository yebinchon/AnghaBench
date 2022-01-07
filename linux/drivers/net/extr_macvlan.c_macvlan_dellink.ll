; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.list_head = type { i32 }
%struct.macvlan_dev = type { i64, i32, i32, i32 }

@MACVLAN_MODE_SOURCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macvlan_dellink(%struct.net_device* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.macvlan_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %6)
  store %struct.macvlan_dev* %7, %struct.macvlan_dev** %5, align 8
  %8 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %9 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MACVLAN_MODE_SOURCE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %15 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %18 = call i32 @macvlan_flush_sources(i32 %16, %struct.macvlan_dev* %17)
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %21 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %20, i32 0, i32 2
  %22 = call i32 @list_del_rcu(i32* %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load %struct.list_head*, %struct.list_head** %4, align 8
  %25 = call i32 @unregister_netdevice_queue(%struct.net_device* %23, %struct.list_head* %24)
  %26 = load %struct.macvlan_dev*, %struct.macvlan_dev** %5, align 8
  %27 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netdev_upper_dev_unlink(i32 %28, %struct.net_device* %29)
  ret void
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @macvlan_flush_sources(i32, %struct.macvlan_dev*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @unregister_netdevice_queue(%struct.net_device*, %struct.list_head*) #1

declare dso_local i32 @netdev_upper_dev_unlink(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
