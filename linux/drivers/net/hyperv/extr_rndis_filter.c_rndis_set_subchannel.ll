; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_set_subchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_set_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netvsc_device = type { i32, i32, i32, i32, %struct.rndis_device*, %struct.nvsp_message }
%struct.rndis_device = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.netvsc_device_info = type { i32 }
%struct.net_device_context = type { i32*, %struct.hv_device* }
%struct.hv_device = type { i32 }

@NVSP_MSG5_TYPE_SUBCHANNEL = common dso_local global i32 0, align 4
@NVSP_SUBCHANNEL_ALLOCATE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sub channel allocate send failed: %d\0A\00", align 1
@NVSP_STAT_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"sub channel request failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@netvsc_hash_key = common dso_local global i32 0, align 4
@VRSS_SEND_TAB_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rndis_set_subchannel(%struct.net_device* %0, %struct.netvsc_device* %1, %struct.netvsc_device_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca %struct.netvsc_device_info*, align 8
  %8 = alloca %struct.nvsp_message*, align 8
  %9 = alloca %struct.net_device_context*, align 8
  %10 = alloca %struct.hv_device*, align 8
  %11 = alloca %struct.rndis_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %6, align 8
  store %struct.netvsc_device_info* %2, %struct.netvsc_device_info** %7, align 8
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %15 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %14, i32 0, i32 5
  store %struct.nvsp_message* %15, %struct.nvsp_message** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %16)
  store %struct.net_device_context* %17, %struct.net_device_context** %9, align 8
  %18 = load %struct.net_device_context*, %struct.net_device_context** %9, align 8
  %19 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %18, i32 0, i32 1
  %20 = load %struct.hv_device*, %struct.hv_device** %19, align 8
  store %struct.hv_device* %20, %struct.hv_device** %10, align 8
  %21 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %22 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %21, i32 0, i32 4
  %23 = load %struct.rndis_device*, %struct.rndis_device** %22, align 8
  store %struct.rndis_device* %23, %struct.rndis_device** %11, align 8
  %24 = call i32 (...) @ASSERT_RTNL()
  %25 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %26 = call i32 @memset(%struct.nvsp_message* %25, i32 0, i32 32)
  %27 = load i32, i32* @NVSP_MSG5_TYPE_SUBCHANNEL, align 4
  %28 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %29 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @NVSP_SUBCHANNEL_ALLOCATE, align 4
  %32 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %33 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  %37 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %38 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %42 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %48 = call i32 @trace_nvsp_send(%struct.net_device* %46, %struct.nvsp_message* %47)
  %49 = load %struct.hv_device*, %struct.hv_device** %10, align 8
  %50 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %53 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %54 = ptrtoint %struct.nvsp_message* %53 to i64
  %55 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %56 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %57 = call i32 @vmbus_sendpacket(i32 %51, %struct.nvsp_message* %52, i32 32, i64 %54, i32 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %3
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %4, align 4
  br label %147

65:                                               ; preds = %3
  %66 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %67 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %66, i32 0, i32 3
  %68 = call i32 @wait_for_completion(i32* %67)
  %69 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %70 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NVSP_STAT_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %147

82:                                               ; preds = %65
  %83 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %84 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 1, %88
  %90 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %91 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %93 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %96 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %95, i32 0, i32 1
  %97 = call i32 @atomic_read(i32* %96)
  %98 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %99 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @wait_event(i32 %94, i32 %102)
  %104 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %7, align 8
  %105 = icmp ne %struct.netvsc_device_info* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %82
  %107 = load %struct.rndis_device*, %struct.rndis_device** %11, align 8
  %108 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %7, align 8
  %109 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @rndis_filter_set_rss_param(%struct.rndis_device* %107, i32 %110)
  br label %116

112:                                              ; preds = %82
  %113 = load %struct.rndis_device*, %struct.rndis_device** %11, align 8
  %114 = load i32, i32* @netvsc_hash_key, align 4
  %115 = call i32 @rndis_filter_set_rss_param(%struct.rndis_device* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %119 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %117, i32 %120)
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %124 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %122, i32 %125)
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %143, %116
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @VRSS_SEND_TAB_SIZE, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %146

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %134 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = srem i32 %132, %135
  %137 = load %struct.net_device_context*, %struct.net_device_context** %9, align 8
  %138 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  br label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %127

146:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %77, %60
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @trace_nvsp_send(%struct.net_device*, %struct.nvsp_message*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @rndis_filter_set_rss_param(%struct.rndis_device*, i32) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
