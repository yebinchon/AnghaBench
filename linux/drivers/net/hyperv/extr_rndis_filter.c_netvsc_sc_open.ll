; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_netvsc_sc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_netvsc_sc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_device = type { i64, i32, i32, %struct.netvsc_channel* }
%struct.netvsc_channel = type { i32, %struct.vmbus_channel* }

@HV_CALL_ISR = common dso_local global i32 0, align 4
@netvsc_ring_bytes = common dso_local global i32 0, align 4
@netvsc_channel_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"sub channel open failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @netvsc_sc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_sc_open(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device_context*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.netvsc_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net_device* @hv_get_drvdata(i32 %13)
  store %struct.net_device* %14, %struct.net_device** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %15)
  store %struct.net_device_context* %16, %struct.net_device_context** %4, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %23 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.netvsc_device* @rcu_dereference_raw(i32 %24)
  store %struct.netvsc_device* %25, %struct.netvsc_device** %5, align 8
  %26 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %27 = icmp ne %struct.netvsc_device* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %31 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %1
  br label %75

35:                                               ; preds = %28
  %36 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %37 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %36, i32 0, i32 3
  %38 = load %struct.netvsc_channel*, %struct.netvsc_channel** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %38, i64 %39
  store %struct.netvsc_channel* %40, %struct.netvsc_channel** %7, align 8
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %42 = load i32, i32* @HV_CALL_ISR, align 4
  %43 = call i32 @set_channel_read_mode(%struct.vmbus_channel* %41, i32 %42)
  %44 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %45 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %46 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %45, i32 0, i32 1
  store %struct.vmbus_channel* %44, %struct.vmbus_channel** %46, align 8
  %47 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %48 = load i32, i32* @netvsc_ring_bytes, align 4
  %49 = load i32, i32* @netvsc_ring_bytes, align 4
  %50 = load i32, i32* @netvsc_channel_cb, align 4
  %51 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %52 = call i32 @vmbus_open(%struct.vmbus_channel* %47, i32 %48, i32 %49, i32* null, i32 0, i32 %50, %struct.netvsc_channel* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %35
  %56 = load %struct.netvsc_channel*, %struct.netvsc_channel** %7, align 8
  %57 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %56, i32 0, i32 0
  %58 = call i32 @napi_enable(i32* %57)
  br label %63

59:                                               ; preds = %35
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @netdev_notice(%struct.net_device* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %65 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %64, i32 0, i32 2
  %66 = call i64 @atomic_inc_return(i32* %65)
  %67 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %68 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %73 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %72, i32 0, i32 1
  %74 = call i32 @wake_up(i32* %73)
  br label %75

75:                                               ; preds = %34, %71, %63
  ret void
}

declare dso_local %struct.net_device* @hv_get_drvdata(i32) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rcu_dereference_raw(i32) #1

declare dso_local i32 @set_channel_read_mode(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @vmbus_open(%struct.vmbus_channel*, i32, i32, i32*, i32, i32, %struct.netvsc_channel*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
