; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_netdetect_query_results.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_netdetect_query_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_mvm_nd_query_results = type { i32, i8* }
%struct.iwl_scan_offload_profiles_query = type { i32, i32, i32 }
%struct.iwl_host_cmd = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CMD_WANT_SKB = common dso_local global i32 0, align 4
@SCAN_OFFLOAD_PROFILES_QUERY_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to query matched profiles (%d)\0A\00", align 1
@IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS = common dso_local global i32 0, align 4
@IWL_SCAN_MAX_PROFILES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid scan offload profiles query response!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_nd_query_results*)* @iwl_mvm_netdetect_query_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_netdetect_query_results(%struct.iwl_mvm* %0, %struct.iwl_mvm_nd_query_results* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_nd_query_results*, align 8
  %6 = alloca %struct.iwl_scan_offload_profiles_query*, align 8
  %7 = alloca %struct.iwl_host_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_nd_query_results* %1, %struct.iwl_mvm_nd_query_results** %5, align 8
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  %13 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 1
  %14 = load i32, i32* @CMD_WANT_SKB, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 2
  %16 = load i32, i32* @SCAN_OFFLOAD_PROFILES_QUERY_CMD, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %18 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %17, %struct.iwl_host_cmd* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %2
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* @IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS, align 4
  %32 = call i64 @fw_has_api(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  store i64 12, i64* %10, align 8
  %35 = load i32, i32* @IWL_SCAN_MAX_PROFILES, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  store i64 %37, i64* %11, align 8
  br label %42

38:                                               ; preds = %26
  store i64 4, i64* %10, align 8
  %39 = load i32, i32* @IWL_SCAN_MAX_PROFILES, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  store i64 %41, i64* %11, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @iwl_rx_packet_payload_len(%struct.TYPE_4__* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %10, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %76

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %7, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = bitcast i8* %60 to %struct.iwl_scan_offload_profiles_query*
  store %struct.iwl_scan_offload_profiles_query* %61, %struct.iwl_scan_offload_profiles_query** %6, align 8
  %62 = load %struct.iwl_scan_offload_profiles_query*, %struct.iwl_scan_offload_profiles_query** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_scan_offload_profiles_query, %struct.iwl_scan_offload_profiles_query* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @le32_to_cpu(i32 %64)
  %66 = load %struct.iwl_mvm_nd_query_results*, %struct.iwl_mvm_nd_query_results** %5, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_nd_query_results, %struct.iwl_mvm_nd_query_results* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.iwl_mvm_nd_query_results*, %struct.iwl_mvm_nd_query_results** %5, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_nd_query_results, %struct.iwl_mvm_nd_query_results* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.iwl_scan_offload_profiles_query*, %struct.iwl_scan_offload_profiles_query** %6, align 8
  %72 = getelementptr inbounds %struct.iwl_scan_offload_profiles_query, %struct.iwl_scan_offload_profiles_query* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @memcpy(i32 %70, i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %55, %50
  %77 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %7)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i32 @iwl_rx_packet_payload_len(%struct.TYPE_4__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
