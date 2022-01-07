; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unable to close device (ret %d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Ring buffer not empty after closing rndis\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netvsc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device_context*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %8)
  store %struct.net_device_context* %9, %struct.net_device_context** %4, align 8
  %10 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %11 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @rtnl_dereference(i32 %12)
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %16 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @rtnl_dereference(i32 %17)
  %19 = bitcast i8* %18 to %struct.netvsc_device*
  store %struct.netvsc_device* %19, %struct.netvsc_device** %6, align 8
  %20 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netvsc_tx_disable(%struct.netvsc_device* %20, %struct.net_device* %21)
  %23 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %24 = icmp ne %struct.netvsc_device* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %28 = call i32 @rndis_filter_close(%struct.netvsc_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %38 = call i32 @netvsc_wait_until_empty(%struct.netvsc_device* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @dev_close(%struct.net_device* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %31, %25
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @netvsc_tx_disable(%struct.netvsc_device*, %struct.net_device*) #1

declare dso_local i32 @rndis_filter_close(%struct.netvsc_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netvsc_wait_until_empty(%struct.netvsc_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
