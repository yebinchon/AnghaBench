; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_switch_datapath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_switch_datapath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, %struct.hv_device* }
%struct.hv_device = type { i32 }
%struct.netvsc_device = type { %struct.nvsp_message }
%struct.nvsp_message = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NVSP_MSG4_TYPE_SWITCH_DATA_PATH = common dso_local global i32 0, align 4
@NVSP_DATAPATH_VF = common dso_local global i32 0, align 4
@NVSP_DATAPATH_SYNTHETIC = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netvsc_switch_datapath(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device_context*, align 8
  %6 = alloca %struct.hv_device*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca %struct.nvsp_message*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %9)
  store %struct.net_device_context* %10, %struct.net_device_context** %5, align 8
  %11 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %12 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %11, i32 0, i32 1
  %13 = load %struct.hv_device*, %struct.hv_device** %12, align 8
  store %struct.hv_device* %13, %struct.hv_device** %6, align 8
  %14 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %15 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.netvsc_device* @rtnl_dereference(i32 %16)
  store %struct.netvsc_device* %17, %struct.netvsc_device** %7, align 8
  %18 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %19 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %18, i32 0, i32 0
  store %struct.nvsp_message* %19, %struct.nvsp_message** %8, align 8
  %20 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %21 = call i32 @memset(%struct.nvsp_message* %20, i32 0, i32 8)
  %22 = load i32, i32* @NVSP_MSG4_TYPE_SWITCH_DATA_PATH, align 4
  %23 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %24 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i32, i32* @NVSP_DATAPATH_VF, align 4
  %30 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %31 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load i32, i32* @NVSP_DATAPATH_SYNTHETIC, align 4
  %37 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %38 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %45 = call i32 @trace_nvsp_send(%struct.net_device* %43, %struct.nvsp_message* %44)
  %46 = load %struct.hv_device*, %struct.hv_device** %6, align 8
  %47 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %50 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %51 = ptrtoint %struct.nvsp_message* %50 to i64
  %52 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %53 = call i32 @vmbus_sendpacket(i32 %48, %struct.nvsp_message* %49, i32 8, i64 %51, i32 %52, i32 0)
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @trace_nvsp_send(%struct.net_device*, %struct.nvsp_message*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
