; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_init_wifidev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_init_wifidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32 }
%struct.net_device = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"wifi%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@wifi_setup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.airo_info*, %struct.net_device*)* @init_wifidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @init_wifidev(%struct.airo_info* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.airo_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.airo_info* %0, %struct.airo_info** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %9 = load i32, i32* @wifi_setup, align 4
  %10 = call %struct.net_device* @alloc_netdev(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %53

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SET_NETDEV_DEV(%struct.net_device* %35, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @eth_hw_addr_inherit(%struct.net_device* %41, %struct.net_device* %42)
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call i32 @register_netdev(%struct.net_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %14
  %49 = load %struct.net_device*, %struct.net_device** %7, align 8
  %50 = call i32 @free_netdev(%struct.net_device* %49)
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %53

51:                                               ; preds = %14
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %52, %struct.net_device** %3, align 8
  br label %53

53:                                               ; preds = %51, %48, %13
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %54
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @eth_hw_addr_inherit(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
