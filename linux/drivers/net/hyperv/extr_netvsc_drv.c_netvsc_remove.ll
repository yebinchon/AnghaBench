; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.net_device_context = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.netvsc_device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"No net device to remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @netvsc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_remove(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.net_device_context*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %8 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %9 = call %struct.net_device* @hv_get_drvdata(%struct.hv_device* %8)
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = icmp eq %struct.net_device* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %14 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %17)
  store %struct.net_device_context* %18, %struct.net_device_context** %4, align 8
  %19 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %20 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %19, i32 0, i32 4
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = call i32 (...) @rtnl_lock()
  %23 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %24 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @rtnl_dereference(i32 %25)
  %27 = bitcast i8* %26 to %struct.netvsc_device*
  store %struct.netvsc_device* %27, %struct.netvsc_device** %7, align 8
  %28 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %29 = icmp ne %struct.netvsc_device* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %32 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %31, i32 0, i32 0
  %33 = call i32 @cancel_work_sync(i32* %32)
  br label %34

34:                                               ; preds = %30, %16
  %35 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %36 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @rtnl_dereference(i32 %37)
  %39 = bitcast i8* %38 to %struct.net_device*
  store %struct.net_device* %39, %struct.net_device** %5, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @netvsc_unregister_vf(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %47 = icmp ne %struct.netvsc_device* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %50 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %51 = call i32 @rndis_filter_device_remove(%struct.hv_device* %49, %struct.netvsc_device* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = call i32 @unregister_netdevice(%struct.net_device* %53)
  %55 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %56 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %55, i32 0, i32 1
  %57 = call i32 @list_del(i32* %56)
  %58 = call i32 (...) @rtnl_unlock()
  %59 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %60 = call i32 @hv_set_drvdata(%struct.hv_device* %59, i32* null)
  %61 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %62 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @free_percpu(i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %6, align 8
  %66 = call i32 @free_netdev(%struct.net_device* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %52, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.net_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @netvsc_unregister_vf(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_device_remove(%struct.hv_device*, %struct.netvsc_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, i32*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
