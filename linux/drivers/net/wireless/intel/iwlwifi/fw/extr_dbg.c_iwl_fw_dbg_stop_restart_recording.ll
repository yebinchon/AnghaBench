; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_stop_restart_recording.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_stop_restart_recording.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_fw_dbg_params = type { i32 }

@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@IWL_FW_INI_LOCATION_INVALID = common dso_local global i64 0, align 8
@IWL_UCODE_TLV_CAPA_DBG_SUSPEND_RESUME_CMD_SUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_fw_dbg_stop_restart_recording(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_dbg_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca %struct.iwl_fw_dbg_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store %struct.iwl_fw_dbg_params* %1, %struct.iwl_fw_dbg_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @STATUS_FW_ERROR, align 4
  %10 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %9, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %3
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IWL_FW_INI_LOCATION_INVALID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24, %3
  store i32 0, i32* %4, align 4
  br label %66

34:                                               ; preds = %24, %16
  %35 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %36 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* @IWL_UCODE_TLV_CAPA_DBG_SUSPEND_RESUME_CMD_SUPP, align 4
  %40 = call i64 @fw_has_capa(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @iwl_fw_dbg_suspend_resume_hcmd(%struct.TYPE_8__* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %64

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %6, align 8
  %56 = call i32 @iwl_fw_dbg_stop_recording(%struct.TYPE_8__* %54, %struct.iwl_fw_dbg_params* %55)
  br label %63

57:                                               ; preds = %48
  %58 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %59 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.iwl_fw_dbg_params*, %struct.iwl_fw_dbg_params** %6, align 8
  %62 = call i32 @iwl_fw_dbg_restart_recording(%struct.TYPE_8__* %60, %struct.iwl_fw_dbg_params* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @iwl_fw_dbg_suspend_resume_hcmd(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @iwl_fw_dbg_stop_recording(%struct.TYPE_8__*, %struct.iwl_fw_dbg_params*) #1

declare dso_local i32 @iwl_fw_dbg_restart_recording(%struct.TYPE_8__*, %struct.iwl_fw_dbg_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
