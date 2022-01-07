; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fw_dbg_is_paging_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.h_iwl_fw_dbg_is_paging_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IWL_FW_ERROR_DUMP_PAGING = common dso_local global i32 0, align 4
@IWL_UCODE_TYPE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*)* @iwl_fw_dbg_is_paging_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fw_dbg_is_paging_enabled(%struct.iwl_fw_runtime* %0) #0 {
  %2 = alloca %struct.iwl_fw_runtime*, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %2, align 8
  %3 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %4 = load i32, i32* @IWL_FW_ERROR_DUMP_PAGING, align 4
  %5 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %8, i32 0, i32 3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %7
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IWL_UCODE_TYPE_MAX, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %2, align 8
  %37 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %36, i32 0, i32 1
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %35, %22, %16, %7, %1
  %44 = phi i1 [ false, %22 ], [ false, %16 ], [ false, %7 ], [ false, %1 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
