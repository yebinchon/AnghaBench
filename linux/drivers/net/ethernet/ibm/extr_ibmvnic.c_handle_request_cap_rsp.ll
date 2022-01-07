; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_request_cap_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_request_cap_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i32, i32 }
%struct.ibmvnic_adapter = type { i32, i32, %struct.ibmvnic_query_ip_offload_buffer, i32, %struct.TYPE_9__, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_7__* }
%struct.ibmvnic_query_ip_offload_buffer = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rx_add\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"tx_entries_per_subcrq\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rx_add_entries_per_subcrq\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"promisc\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Got invalid cap request rsp %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"req=%lld, rsp=%ld in %s queue, retrying.\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"mtu of %llu is not supported. Reverting.\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Error %d in request cap rsp\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Couldn't map offload buffer\0A\00", align 1
@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@QUERY_IP_OFFLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_request_cap_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request_cap_rsp(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca %union.ibmvnic_crq*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %union.ibmvnic_crq, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibmvnic_query_ip_offload_buffer*, align 8
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %3, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %4, align 8
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 12
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 3
  %17 = call i32 @atomic_dec(i32* %16)
  %18 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %19 = bitcast %union.ibmvnic_crq* %18 to %struct.TYPE_11__*
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @be16_to_cpu(i32 %21)
  switch i32 %22, label %44 [
    i32 129, label %23
    i32 131, label %26
    i32 132, label %29
    i32 130, label %32
    i32 133, label %35
    i32 134, label %38
    i32 135, label %41
  ]

23:                                               ; preds = %2
  %24 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %24, i32 0, i32 11
  store i64* %25, i64** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %51

26:                                               ; preds = %2
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 10
  store i64* %28, i64** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %51

29:                                               ; preds = %2
  %30 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %30, i32 0, i32 9
  store i64* %31, i64** %6, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %51

32:                                               ; preds = %2
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 8
  store i64* %34, i64** %6, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %51

35:                                               ; preds = %2
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %36, i32 0, i32 7
  store i64* %37, i64** %6, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %51

38:                                               ; preds = %2
  %39 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %39, i32 0, i32 6
  store i64* %40, i64** %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %42, i32 0, i32 5
  store i64* %43, i64** %6, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %51

44:                                               ; preds = %2
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %47 = bitcast %union.ibmvnic_crq* %46 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  br label %153

51:                                               ; preds = %41, %38, %35, %32, %29, %26, %23
  %52 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %53 = bitcast %union.ibmvnic_crq* %52 to %struct.TYPE_11__*
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %94 [
    i32 128, label %57
    i32 136, label %58
  ]

57:                                               ; preds = %51
  br label %102

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %63 = bitcast %union.ibmvnic_crq* %62 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @be64_to_cpu(i32 %65)
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @dev_info(%struct.device* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 %61, i64 %66, i8* %67)
  %69 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %70 = bitcast %union.ibmvnic_crq* %69 to %struct.TYPE_11__*
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @be16_to_cpu(i32 %72)
  %74 = icmp eq i32 %73, 134
  br i1 %74, label %75, label %84

75:                                               ; preds = %58
  %76 = load i64*, i64** %6, align 8
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i64 %77)
  %79 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %80 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %6, align 8
  store i64 %82, i64* %83, align 8
  br label %91

84:                                               ; preds = %58
  %85 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %86 = bitcast %union.ibmvnic_crq* %85 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @be64_to_cpu(i32 %88)
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %84, %75
  %92 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %93 = call i32 @ibmvnic_send_req_caps(%struct.ibmvnic_adapter* %92, i32 1)
  br label %153

94:                                               ; preds = %51
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %97 = bitcast %union.ibmvnic_crq* %96 to %struct.TYPE_11__*
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %100)
  br label %153

102:                                              ; preds = %57
  %103 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %103, i32 0, i32 3
  %105 = call i64 @atomic_read(i32* %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %153

107:                                              ; preds = %102
  store i32 4, i32* %9, align 4
  %108 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %108, i32 0, i32 2
  store %struct.ibmvnic_query_ip_offload_buffer* %109, %struct.ibmvnic_query_ip_offload_buffer** %10, align 8
  %110 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load %struct.ibmvnic_query_ip_offload_buffer*, %struct.ibmvnic_query_ip_offload_buffer** %10, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i32 @dma_map_single(%struct.device* %112, %struct.ibmvnic_query_ip_offload_buffer* %113, i32 %114, i32 %115)
  %117 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.device*, %struct.device** %5, align 8
  %120 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %121 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @dma_mapping_error(%struct.device* %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %107
  %126 = load i32, i32* @FW_FEATURE_CMO, align 4
  %127 = call i32 @firmware_has_feature(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %125
  br label %153

133:                                              ; preds = %107
  %134 = call i32 @memset(%union.ibmvnic_crq* %8, i32 0, i32 24)
  %135 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %136 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_12__*
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @QUERY_IP_OFFLOAD, align 4
  %139 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_12__*
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_12__*
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %146 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @cpu_to_be32(i32 %147)
  %149 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_12__*
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  %151 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %152 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %151, %union.ibmvnic_crq* %8)
  br label %153

153:                                              ; preds = %44, %91, %94, %132, %133, %102
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64, i8*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @ibmvnic_send_req_caps(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dma_map_single(%struct.device*, %struct.ibmvnic_query_ip_offload_buffer*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
