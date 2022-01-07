; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fw_dbg_is_d3_debug_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fw_dbg_is_d3_debug_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 (i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@IWL_UCODE_TLV_CAPA_D3_DEBUG = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_D3_DEBUG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*)* @iwl_fw_dbg_is_d3_debug_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fw_dbg_is_d3_debug_enabled(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %3 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %3, i32 0, i32 3
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* @IWL_UCODE_TLV_CAPA_D3_DEBUG, align 4
  %8 = call i64 @fw_has_capa(i32* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %10
  %20 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64 (i32)*, i64 (i32)** %28, align 8
  %30 = icmp ne i64 (i32)* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %33 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64 (i32)*, i64 (i32)** %35, align 8
  %37 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %38 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 %36(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %44 = load i32, i32* @IWL_FW_ERROR_DUMP_D3_DEBUG_DATA, align 4
  %45 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %31, %24, %19, %10, %1
  %48 = phi i1 [ false, %31 ], [ false, %24 ], [ false, %19 ], [ false, %10 ], [ false, %1 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
