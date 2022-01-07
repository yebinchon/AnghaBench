; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_lapbether.c_lapbeth_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_lapbether.c_lapbeth_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lapbethdev = type { i32, %struct.net_device*, %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lapb%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@lapbeth_setup = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@lapbeth_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lapbeth_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lapbeth_new_device(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lapbethdev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %10 = load i32, i32* @lapbeth_setup, align 4
  %11 = call %struct.net_device* @alloc_netdev(i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.lapbethdev* @netdev_priv(%struct.net_device* %16)
  store %struct.lapbethdev* %17, %struct.lapbethdev** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load %struct.lapbethdev*, %struct.lapbethdev** %4, align 8
  %20 = getelementptr inbounds %struct.lapbethdev, %struct.lapbethdev* %19, i32 0, i32 2
  store %struct.net_device* %18, %struct.net_device** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @dev_hold(%struct.net_device* %21)
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load %struct.lapbethdev*, %struct.lapbethdev** %4, align 8
  %25 = getelementptr inbounds %struct.lapbethdev, %struct.lapbethdev* %24, i32 0, i32 1
  store %struct.net_device* %23, %struct.net_device** %25, align 8
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i64 @register_netdevice(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %38

32:                                               ; preds = %15
  %33 = load %struct.lapbethdev*, %struct.lapbethdev** %4, align 8
  %34 = getelementptr inbounds %struct.lapbethdev, %struct.lapbethdev* %33, i32 0, i32 0
  %35 = call i32 @list_add_rcu(i32* %34, i32* @lapbeth_devices)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %38, %32, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = call i32 @dev_put(%struct.net_device* %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @free_netdev(%struct.net_device* %41)
  br label %36
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.lapbethdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i64 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
