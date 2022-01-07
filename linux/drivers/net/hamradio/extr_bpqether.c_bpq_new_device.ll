; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_new_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_new_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bpqdev = type { i32, i32, i32, %struct.net_device*, %struct.net_device* }

@.str = private unnamed_addr constant [6 x i8] c"bpq%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@bpq_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bpq_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bpq_new_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_new_device(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bpqdev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %8 = load i32, i32* @bpq_setup, align 4
  %9 = call %struct.net_device* @alloc_netdev(i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.bpqdev* @netdev_priv(%struct.net_device* %16)
  store %struct.bpqdev* %17, %struct.bpqdev** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @dev_hold(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %22 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %21, i32 0, i32 4
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %25 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %24, i32 0, i32 3
  store %struct.net_device* %23, %struct.net_device** %25, align 8
  %26 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %27 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @eth_broadcast_addr(i32 %28)
  %30 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %31 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @eth_broadcast_addr(i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @register_netdevice(%struct.net_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %15
  br label %43

39:                                               ; preds = %15
  %40 = load %struct.bpqdev*, %struct.bpqdev** %6, align 8
  %41 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %40, i32 0, i32 0
  %42 = call i32 @list_add_rcu(i32* %41, i32* @bpq_devices)
  store i32 0, i32* %2, align 4
  br label %49

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @dev_put(%struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @free_netdev(%struct.net_device* %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %39, %12
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.bpqdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
