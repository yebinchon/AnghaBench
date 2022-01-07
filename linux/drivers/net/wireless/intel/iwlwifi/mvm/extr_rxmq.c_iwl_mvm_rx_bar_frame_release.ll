; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_bar_frame_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rxmq.c_iwl_mvm_rx_bar_frame_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_bar_frame_release = type { i32, i32 }
%struct.iwl_mvm_baid_data = type { i32, i32 }

@IWL_BAR_FRAME_RELEASE_BAID_MASK = common dso_local global i32 0, align 4
@IWL_BAR_FRAME_RELEASE_NSSN_MASK = common dso_local global i32 0, align 4
@IWL_BAR_FRAME_RELEASE_STA_MASK = common dso_local global i32 0, align 4
@IWL_BAR_FRAME_RELEASE_TID_MASK = common dso_local global i32 0, align 4
@IWL_RX_REORDER_DATA_INVALID_BAID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Got valid BAID %d but not allocated, invalid BAR release!\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"baid 0x%x is mapped to sta:%d tid:%d, but BAR release received for sta:%d tid:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_bar_frame_release(%struct.iwl_mvm* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_rx_packet*, align 8
  %10 = alloca %struct.iwl_bar_frame_release*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iwl_mvm_baid_data*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %17 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %16)
  store %struct.iwl_rx_packet* %17, %struct.iwl_rx_packet** %9, align 8
  %18 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %9, align 8
  %19 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.iwl_bar_frame_release*
  store %struct.iwl_bar_frame_release* %22, %struct.iwl_bar_frame_release** %10, align 8
  %23 = load %struct.iwl_bar_frame_release*, %struct.iwl_bar_frame_release** %10, align 8
  %24 = getelementptr inbounds %struct.iwl_bar_frame_release, %struct.iwl_bar_frame_release* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IWL_BAR_FRAME_RELEASE_BAID_MASK, align 4
  %27 = call i32 @le32_get_bits(i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.iwl_bar_frame_release*, %struct.iwl_bar_frame_release** %10, align 8
  %29 = getelementptr inbounds %struct.iwl_bar_frame_release, %struct.iwl_bar_frame_release* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IWL_BAR_FRAME_RELEASE_NSSN_MASK, align 4
  %32 = call i32 @le32_get_bits(i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.iwl_bar_frame_release*, %struct.iwl_bar_frame_release** %10, align 8
  %34 = getelementptr inbounds %struct.iwl_bar_frame_release, %struct.iwl_bar_frame_release* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IWL_BAR_FRAME_RELEASE_STA_MASK, align 4
  %37 = call i32 @le32_get_bits(i32 %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.iwl_bar_frame_release*, %struct.iwl_bar_frame_release** %10, align 8
  %39 = getelementptr inbounds %struct.iwl_bar_frame_release, %struct.iwl_bar_frame_release* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IWL_BAR_FRAME_RELEASE_TID_MASK, align 4
  %42 = call i32 @le32_get_bits(i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @IWL_RX_REORDER_DATA_INVALID_BAID, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp uge i32 %47, %51
  br label %53

53:                                               ; preds = %46, %4
  %54 = phi i1 [ true, %4 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON_ONCE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %111

59:                                               ; preds = %53
  %60 = call i32 (...) @rcu_read_lock()
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.iwl_mvm_baid_data* @rcu_dereference(i32 %67)
  store %struct.iwl_mvm_baid_data* %68, %struct.iwl_mvm_baid_data** %15, align 8
  %69 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %70 = icmp ne %struct.iwl_mvm_baid_data* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %59
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @IWL_DEBUG_RX(%struct.iwl_mvm* %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %109

75:                                               ; preds = %59
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %82, %85
  br label %87

87:                                               ; preds = %81, %75
  %88 = phi i1 [ true, %75 ], [ %86, %81 ]
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iwl_mvm_baid_data*, %struct.iwl_mvm_baid_data** %15, align 8
  %95 = getelementptr inbounds %struct.iwl_mvm_baid_data, %struct.iwl_mvm_baid_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @WARN(i32 %89, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %93, i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %109

102:                                              ; preds = %87
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %104 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @iwl_mvm_release_frames_from_notif(%struct.iwl_mvm* %103, %struct.napi_struct* %104, i32 %105, i32 %106, i32 %107, i32 0)
  br label %109

109:                                              ; preds = %102, %101, %71
  %110 = call i32 (...) @rcu_read_unlock()
  br label %111

111:                                              ; preds = %109, %58
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_get_bits(i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.iwl_mvm_baid_data* @rcu_dereference(i32) #1

declare dso_local i32 @IWL_DEBUG_RX(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_release_frames_from_notif(%struct.iwl_mvm*, %struct.napi_struct*, i32, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
