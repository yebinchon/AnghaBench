; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_num_match_chans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_query_num_match_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_nd_query_results = type { i64 }
%struct.iwl_scan_offload_profile_match = type { i32* }
%struct.iwl_scan_offload_profile_match_v1 = type { i32* }

@IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS = common dso_local global i32 0, align 4
@SCAN_OFFLOAD_MATCHING_CHANNELS_LEN = common dso_local global i32 0, align 4
@SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_nd_query_results*, i32)* @iwl_mvm_query_num_match_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_query_num_match_chans(%struct.iwl_mvm* %0, %struct.iwl_mvm_nd_query_results* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_nd_query_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_scan_offload_profile_match*, align 8
  %10 = alloca %struct.iwl_scan_offload_profile_match_v1*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_nd_query_results* %1, %struct.iwl_mvm_nd_query_results** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %12 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @IWL_UCODE_TLV_API_SCAN_OFFLOAD_CHANS, align 4
  %16 = call i64 @fw_has_api(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = load %struct.iwl_mvm_nd_query_results*, %struct.iwl_mvm_nd_query_results** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_nd_query_results, %struct.iwl_mvm_nd_query_results* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.iwl_scan_offload_profile_match*
  store %struct.iwl_scan_offload_profile_match* %22, %struct.iwl_scan_offload_profile_match** %9, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %43, %18
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SCAN_OFFLOAD_MATCHING_CHANNELS_LEN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.iwl_scan_offload_profile_match*, %struct.iwl_scan_offload_profile_match** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.iwl_scan_offload_profile_match, %struct.iwl_scan_offload_profile_match* %28, i64 %30
  %32 = getelementptr inbounds %struct.iwl_scan_offload_profile_match, %struct.iwl_scan_offload_profile_match* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @hweight8(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %23

46:                                               ; preds = %23
  br label %76

47:                                               ; preds = %3
  %48 = load %struct.iwl_mvm_nd_query_results*, %struct.iwl_mvm_nd_query_results** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm_nd_query_results, %struct.iwl_mvm_nd_query_results* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.iwl_scan_offload_profile_match_v1*
  store %struct.iwl_scan_offload_profile_match_v1* %51, %struct.iwl_scan_offload_profile_match_v1** %10, align 8
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %72, %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @SCAN_OFFLOAD_MATCHING_CHANNELS_LEN_V1, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load %struct.iwl_scan_offload_profile_match_v1*, %struct.iwl_scan_offload_profile_match_v1** %10, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.iwl_scan_offload_profile_match_v1, %struct.iwl_scan_offload_profile_match_v1* %57, i64 %59
  %61 = getelementptr inbounds %struct.iwl_scan_offload_profile_match_v1, %struct.iwl_scan_offload_profile_match_v1* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @hweight8(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %52

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i64 @fw_has_api(i32*, i32) #1

declare dso_local i64 @hweight8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
