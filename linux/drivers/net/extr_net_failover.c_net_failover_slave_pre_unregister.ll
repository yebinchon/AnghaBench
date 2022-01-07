; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_slave_pre_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_slave_pre_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @net_failover_slave_pre_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_slave_pre_unregister(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_failover_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %9)
  store %struct.net_failover_info* %10, %struct.net_failover_info** %8, align 8
  %11 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %12 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net_device* @rtnl_dereference(i32 %13)
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %16 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net_device* @rtnl_dereference(i32 %17)
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = icmp ne %struct.net_device* %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = icmp ne %struct.net_device* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
