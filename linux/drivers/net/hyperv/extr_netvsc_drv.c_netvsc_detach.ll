; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i32, i32 }
%struct.net_device_context = type { %struct.hv_device* }
%struct.hv_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unable to close device (ret %d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Ring buffer not empty after closing rndis\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.netvsc_device*)* @netvsc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_detach(%struct.net_device* %0, %struct.netvsc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.hv_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %9)
  store %struct.net_device_context* %10, %struct.net_device_context** %6, align 8
  %11 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %12 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %11, i32 0, i32 0
  %13 = load %struct.hv_device*, %struct.hv_device** %12, align 8
  store %struct.hv_device* %13, %struct.hv_device** %7, align 8
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %15 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %14, i32 0, i32 1
  %16 = call i64 @cancel_work_sync(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %20 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i64 @netif_running(%struct.net_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netvsc_tx_disable(%struct.netvsc_device* %26, %struct.net_device* %27)
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %30 = call i32 @rndis_filter_close(%struct.netvsc_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %54

38:                                               ; preds = %25
  %39 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %40 = call i32 @netvsc_wait_until_empty(%struct.netvsc_device* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @netif_device_detach(%struct.net_device* %49)
  %51 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %52 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %53 = call i32 @rndis_filter_device_remove(%struct.hv_device* %51, %struct.netvsc_device* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %43, %33
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @cancel_work_sync(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netvsc_tx_disable(%struct.netvsc_device*, %struct.net_device*) #1

declare dso_local i32 @rndis_filter_close(%struct.netvsc_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netvsc_wait_until_empty(%struct.netvsc_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_device_remove(%struct.hv_device*, %struct.netvsc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
