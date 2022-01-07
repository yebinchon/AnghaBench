; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_vf_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_vf_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.net_device_context = type { i32 }

@netvsc_vf_handle_frame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"can not register netvsc VF receive handler (err = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"can not set master device %s (err = %d)\0A\00", align 1
@IFF_SLAVE = common dso_local global i32 0, align 4
@VF_TAKEOVER_INT = common dso_local global i32 0, align 4
@NETDEV_JOIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"joined to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @netvsc_vf_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_vf_join(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %8)
  store %struct.net_device_context* %9, %struct.net_device_context** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load i32, i32* @netvsc_vf_handle_frame, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i32 @netdev_rx_handler_register(%struct.net_device* %10, i32 %11, %struct.net_device* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netdev_master_upper_dev_link(%struct.net_device* %21, %struct.net_device* %22, i32* null, i32* null, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  br label %51

33:                                               ; preds = %20
  %34 = load i32, i32* @IFF_SLAVE, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %40 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %39, i32 0, i32 0
  %41 = load i32, i32* @VF_TAKEOVER_INT, align 4
  %42 = call i32 @schedule_delayed_work(i32* %40, i32 %41)
  %43 = load i32, i32* @NETDEV_JOIN, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @call_netdevice_notifiers(i32 %43, %struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netdev_info(%struct.net_device* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 0, i32* %3, align 4
  br label %56

51:                                               ; preds = %26
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32 @netdev_rx_handler_unregister(%struct.net_device* %52)
  br label %54

54:                                               ; preds = %51, %16
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %33
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @netdev_master_upper_dev_link(%struct.net_device*, %struct.net_device*, i32*, i32*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
