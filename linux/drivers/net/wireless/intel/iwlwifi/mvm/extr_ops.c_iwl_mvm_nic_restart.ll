; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__*, i32*, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iwl_mvm_reprobe = type { i32, i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Firmware error during reconfiguration - reprobe!\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Module is being unloaded - abort\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@iwl_mvm_reprobe_wk = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_HW_RESTART_REQUESTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"HW restart already requested, but not started\0A\00", align 1
@IWL_UCODE_REGULAR = common dso_local global i64 0, align 8
@STATUS_TRANS_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_nic_restart(%struct.iwl_mvm* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm_reprobe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 8
  %11 = call i32 @iwl_abort_notification_waits(i32* %10)
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = call i32 @iwl_dbg_tlv_del_timers(%struct.TYPE_8__* %14)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %17 = call i32 @iwl_mvm_report_scan_aborted(%struct.iwl_mvm* %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 3
  %28 = call i32 @iwl_fw_error_collect(%struct.TYPE_9__* %27)
  br label %164

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %31, i32 0, i32 2
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %37 = call i32 @IWL_ERR(%struct.iwl_mvm* %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @THIS_MODULE, align 4
  %39 = call i32 @try_module_get(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %43 = call i32 @IWL_ERR(%struct.iwl_mvm* %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %164

44:                                               ; preds = %35
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call i8* @kzalloc(i32 8, i32 %45)
  %47 = bitcast i8* %46 to %struct.iwl_mvm_reprobe*
  store %struct.iwl_mvm_reprobe* %47, %struct.iwl_mvm_reprobe** %5, align 8
  %48 = load %struct.iwl_mvm_reprobe*, %struct.iwl_mvm_reprobe** %5, align 8
  %49 = icmp ne %struct.iwl_mvm_reprobe* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @THIS_MODULE, align 4
  %52 = call i32 @module_put(i32 %51)
  br label %164

53:                                               ; preds = %44
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iwl_mvm_reprobe*, %struct.iwl_mvm_reprobe** %5, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_reprobe, %struct.iwl_mvm_reprobe* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.iwl_mvm_reprobe*, %struct.iwl_mvm_reprobe** %5, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_reprobe, %struct.iwl_mvm_reprobe* %61, i32 0, i32 0
  %63 = load i32, i32* @iwl_mvm_reprobe_wk, align 4
  %64 = call i32 @INIT_WORK(i32* %62, i32 %63)
  %65 = load %struct.iwl_mvm_reprobe*, %struct.iwl_mvm_reprobe** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_reprobe, %struct.iwl_mvm_reprobe* %65, i32 0, i32 0
  %67 = call i32 @schedule_work(i32* %66)
  br label %163

68:                                               ; preds = %29
  %69 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 2
  %72 = call i64 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %76 = call i32 @IWL_ERR(%struct.iwl_mvm* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %162

77:                                               ; preds = %68
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %79 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IWL_UCODE_REGULAR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %161

84:                                               ; preds = %77
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %86 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %161

89:                                               ; preds = %84
  %90 = load i32, i32* @STATUS_TRANS_DEAD, align 4
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i64 @test_bit(i32 %90, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %161, label %97

97:                                               ; preds = %89
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %99 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %98, i32 0, i32 6
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %136

105:                                              ; preds = %97
  %106 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %107 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %106, i32 0, i32 6
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %6, align 4
  %112 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %113 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %112, i32 0, i32 6
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @GFP_ATOMIC, align 4
  %120 = call i8* @kzalloc(i32 %118, i32 %119)
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %8, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %105
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %127 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %126, i32 0, i32 5
  store i32* %125, i32** %127, align 8
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %128, i32 0, i32 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @iwl_trans_read_mem_bytes(%struct.TYPE_8__* %130, i32 %131, i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %124, %105
  br label %136

136:                                              ; preds = %135, %97
  %137 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %138 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %137, i32 0, i32 3
  %139 = call i32 @iwl_fw_error_collect(%struct.TYPE_9__* %138)
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %144 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %149 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, -1
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %147, %142, %136
  %153 = load i32, i32* @IWL_MVM_STATUS_HW_RESTART_REQUESTED, align 4
  %154 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %155 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %154, i32 0, i32 2
  %156 = call i32 @set_bit(i32 %153, i32* %155)
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %158 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ieee80211_restart_hw(i32 %159)
  br label %161

161:                                              ; preds = %152, %89, %84, %77
  br label %162

162:                                              ; preds = %161, %74
  br label %163

163:                                              ; preds = %162, %53
  br label %164

164:                                              ; preds = %41, %50, %163, %25
  ret void
}

declare dso_local i32 @iwl_abort_notification_waits(i32*) #1

declare dso_local i32 @iwl_dbg_tlv_del_timers(%struct.TYPE_8__*) #1

declare dso_local i32 @iwl_mvm_report_scan_aborted(%struct.iwl_mvm*) #1

declare dso_local i32 @iwl_fw_error_collect(%struct.TYPE_9__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @iwl_trans_read_mem_bytes(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_restart_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
