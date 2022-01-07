; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_collect_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_collect_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.iwl_fw_dbg_params = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Firmware not running - cannot dump error\0A\00", align 1
@STATUS_TRANS_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Skip fw error dump since bus is dead\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to stop DBGC recording, aborting dump\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"WRT: Data collection start\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"WRT: Data collection done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, i32)* @iwl_fw_dbg_collect_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_dbg_collect_sync(%struct.iwl_fw_runtime* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_fw_dbg_params, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.iwl_fw_dbg_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %9 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %7, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %86

14:                                               ; preds = %2
  %15 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = icmp ne i32 (i32)* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %39 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %41 = call i32 @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime* %40)
  br label %80

42:                                               ; preds = %26, %19, %14
  %43 = load i32, i32* @STATUS_TRANS_DEAD, align 4
  %44 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %43, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %52 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %80

53:                                               ; preds = %42
  %54 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %55 = call i64 @iwl_fw_dbg_stop_restart_recording(%struct.iwl_fw_runtime* %54, %struct.iwl_fw_dbg_params* %5, i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %59 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %80

60:                                               ; preds = %53
  %61 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %62 = call i32 @IWL_DEBUG_FW_INFO(%struct.iwl_fw_runtime* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %64 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i64 @iwl_trans_dbg_ini_valid(%struct.TYPE_6__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @iwl_fw_error_ini_dump(%struct.iwl_fw_runtime* %69, i32 %70)
  br label %75

72:                                               ; preds = %60
  %73 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %74 = call i32 @iwl_fw_error_dump(%struct.iwl_fw_runtime* %73)
  br label %75

75:                                               ; preds = %72, %68
  %76 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %77 = call i32 @IWL_DEBUG_FW_INFO(%struct.iwl_fw_runtime* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %79 = call i64 @iwl_fw_dbg_stop_restart_recording(%struct.iwl_fw_runtime* %78, %struct.iwl_fw_dbg_params* %5, i32 0)
  br label %80

80:                                               ; preds = %75, %57, %50, %37
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @clear_bit(i32 %81, i32* %84)
  br label %86

86:                                               ; preds = %80, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_fw_runtime*, i8*) #2

declare dso_local i32 @iwl_fw_free_dump_desc(%struct.iwl_fw_runtime*) #2

declare dso_local i64 @iwl_fw_dbg_stop_restart_recording(%struct.iwl_fw_runtime*, %struct.iwl_fw_dbg_params*, i32) #2

declare dso_local i32 @IWL_DEBUG_FW_INFO(%struct.iwl_fw_runtime*, i8*) #2

declare dso_local i64 @iwl_trans_dbg_ini_valid(%struct.TYPE_6__*) #2

declare dso_local i32 @iwl_fw_error_ini_dump(%struct.iwl_fw_runtime*, i32) #2

declare dso_local i32 @iwl_fw_error_dump(%struct.iwl_fw_runtime*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
