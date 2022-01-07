; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_linkstatus_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_linkstatus_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.rndis_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rndis_indicate_status }
%struct.rndis_indicate_status = type { i32, i32 }
%struct.net_device_context = type { i32, i32, i32, i32 }
%struct.netvsc_reconfig = type { i32, i32 }

@RNDIS_STATUS_LINK_SPEED_CHANGE = common dso_local global i32 0, align 4
@RNDIS_STATUS_NETWORK_CHANGE = common dso_local global i32 0, align 4
@RNDIS_STATUS_MEDIA_CONNECT = common dso_local global i32 0, align 4
@RNDIS_STATUS_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netvsc_linkstatus_callback(%struct.net_device* %0, %struct.rndis_message* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rndis_message*, align 8
  %5 = alloca %struct.rndis_indicate_status*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.netvsc_reconfig*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rndis_message* %1, %struct.rndis_message** %4, align 8
  %10 = load %struct.rndis_message*, %struct.rndis_message** %4, align 8
  %11 = getelementptr inbounds %struct.rndis_message, %struct.rndis_message* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rndis_indicate_status* %12, %struct.rndis_indicate_status** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %13)
  store %struct.net_device_context* %14, %struct.net_device_context** %6, align 8
  %15 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %16 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RNDIS_STATUS_LINK_SPEED_CHANGE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %22 = bitcast %struct.rndis_indicate_status* %21 to i8*
  %23 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %24 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %22, i64 %26
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 10000
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %33 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %88

34:                                               ; preds = %2
  %35 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %36 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RNDIS_STATUS_NETWORK_CHANGE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %42 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RNDIS_STATUS_MEDIA_CONNECT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %48 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @RNDIS_STATUS_MEDIA_DISCONNECT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %88

53:                                               ; preds = %46, %40, %34
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NETREG_REGISTERED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %88

60:                                               ; preds = %53
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call %struct.netvsc_reconfig* @kzalloc(i32 8, i32 %61)
  store %struct.netvsc_reconfig* %62, %struct.netvsc_reconfig** %7, align 8
  %63 = load %struct.netvsc_reconfig*, %struct.netvsc_reconfig** %7, align 8
  %64 = icmp ne %struct.netvsc_reconfig* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %88

66:                                               ; preds = %60
  %67 = load %struct.rndis_indicate_status*, %struct.rndis_indicate_status** %5, align 8
  %68 = getelementptr inbounds %struct.rndis_indicate_status, %struct.rndis_indicate_status* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.netvsc_reconfig*, %struct.netvsc_reconfig** %7, align 8
  %71 = getelementptr inbounds %struct.netvsc_reconfig, %struct.netvsc_reconfig* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %73 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %72, i32 0, i32 2
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.netvsc_reconfig*, %struct.netvsc_reconfig** %7, align 8
  %77 = getelementptr inbounds %struct.netvsc_reconfig, %struct.netvsc_reconfig* %76, i32 0, i32 0
  %78 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %79 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %78, i32 0, i32 3
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %82 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %81, i32 0, i32 2
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %86 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %85, i32 0, i32 1
  %87 = call i32 @schedule_delayed_work(i32* %86, i32 0)
  br label %88

88:                                               ; preds = %66, %65, %59, %52, %20
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_reconfig* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
