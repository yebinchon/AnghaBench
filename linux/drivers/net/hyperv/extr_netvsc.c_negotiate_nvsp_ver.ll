; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_negotiate_nvsp_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_negotiate_nvsp_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.netvsc_device = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.net_device = type { i64 }

@NVSP_MSG_TYPE_INIT = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED = common dso_local global i32 0, align 4
@NVSP_STAT_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NVSP_PROTOCOL_VERSION_1 = common dso_local global i64 0, align 8
@NVSP_MSG2_TYPE_SEND_NDIS_CONFIG = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NVSP_PROTOCOL_VERSION_5 = common dso_local global i64 0, align 8
@NVSP_PROTOCOL_VERSION_61 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.netvsc_device*, %struct.nvsp_message*, i64)* @negotiate_nvsp_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @negotiate_nvsp_ver(%struct.hv_device* %0, %struct.netvsc_device* %1, %struct.nvsp_message* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_device*, align 8
  %7 = alloca %struct.netvsc_device*, align 8
  %8 = alloca %struct.nvsp_message*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %6, align 8
  store %struct.netvsc_device* %1, %struct.netvsc_device** %7, align 8
  store %struct.nvsp_message* %2, %struct.nvsp_message** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.hv_device*, %struct.hv_device** %6, align 8
  %13 = call %struct.net_device* @hv_get_drvdata(%struct.hv_device* %12)
  store %struct.net_device* %13, %struct.net_device** %10, align 8
  %14 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %15 = call i32 @memset(%struct.nvsp_message* %14, i32 0, i32 56)
  %16 = load i32, i32* @NVSP_MSG_TYPE_INIT, align 4
  %17 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %18 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %22 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i64 %20, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %28 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i64 %26, i64* %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %10, align 8
  %33 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %34 = call i32 @trace_nvsp_send(%struct.net_device* %32, %struct.nvsp_message* %33)
  %35 = load %struct.hv_device*, %struct.hv_device** %6, align 8
  %36 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %39 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %40 = ptrtoint %struct.nvsp_message* %39 to i64
  %41 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %42 = load i32, i32* @VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED, align 4
  %43 = call i32 @vmbus_sendpacket(i32 %37, %struct.nvsp_message* %38, i32 56, i64 %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %131

48:                                               ; preds = %4
  %49 = load %struct.netvsc_device*, %struct.netvsc_device** %7, align 8
  %50 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %49, i32 0, i32 0
  %51 = call i32 @wait_for_completion(i32* %50)
  %52 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %53 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NVSP_STAT_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %131

63:                                               ; preds = %48
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @NVSP_PROTOCOL_VERSION_1, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %131

68:                                               ; preds = %63
  %69 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %70 = call i32 @memset(%struct.nvsp_message* %69, i32 0, i32 56)
  %71 = load i32, i32* @NVSP_MSG2_TYPE_SEND_NDIS_CONFIG, align 4
  %72 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %73 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %10, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ETH_HLEN, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %81 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  store i64 %79, i64* %84, align 8
  %85 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %86 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @NVSP_PROTOCOL_VERSION_5, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %68
  %95 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %96 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %102 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %94, %68
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @NVSP_PROTOCOL_VERSION_61, align 8
  %110 = icmp sge i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %113 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %107
  %119 = load %struct.net_device*, %struct.net_device** %10, align 8
  %120 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %121 = call i32 @trace_nvsp_send(%struct.net_device* %119, %struct.nvsp_message* %120)
  %122 = load %struct.hv_device*, %struct.hv_device** %6, align 8
  %123 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %126 = load %struct.nvsp_message*, %struct.nvsp_message** %8, align 8
  %127 = ptrtoint %struct.nvsp_message* %126 to i64
  %128 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %129 = call i32 @vmbus_sendpacket(i32 %124, %struct.nvsp_message* %125, i32 56, i64 %127, i32 %128, i32 0)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %118, %67, %60, %46
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.net_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @memset(%struct.nvsp_message*, i32, i32) #1

declare dso_local i32 @trace_nvsp_send(%struct.net_device*, %struct.nvsp_message*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.nvsp_message*, i32, i64, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
