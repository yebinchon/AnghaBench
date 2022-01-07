; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_unregister_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_unregister_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"VF unregistering: %s\0A\00", align 1
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netvsc_unregister_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_unregister_vf(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_context*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.net_device* @get_netvsc_byref(%struct.net_device* %6)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %13)
  store %struct.net_device_context* %14, %struct.net_device_context** %5, align 8
  %15 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %16 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %15, i32 0, i32 1
  %17 = call i32 @cancel_delayed_work_sync(i32* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_info(%struct.net_device* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_upper_dev_unlink(%struct.net_device* %25, %struct.net_device* %26)
  %28 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %29 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @RCU_INIT_POINTER(i32 %30, i32* null)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @dev_put(%struct.net_device* %32)
  %34 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %12, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.net_device* @get_netvsc_byref(%struct.net_device*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
