; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dump_rxf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dump_rxf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_7__*, %struct.iwl_fwrt_shared_mem_cfg }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_fw_error_dump_data = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"WRT RX FIFO dump\0A\00", align 1
@IWL_FW_ERROR_DUMP_RXF = common dso_local global i32 0, align 4
@RXF_DIFF_FROM_PREV = common dso_local global i64 0, align 8
@LMAC2_PRPH_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**)* @iwl_fw_dump_rxf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_fw_dump_rxf(%struct.iwl_fw_runtime* %0, %struct.iwl_fw_error_dump_data** %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_fw_error_dump_data**, align 8
  %5 = alloca %struct.iwl_fwrt_shared_mem_cfg*, align 8
  %6 = alloca i64, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_fw_error_dump_data** %1, %struct.iwl_fw_error_dump_data*** %4, align 8
  %7 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %7, i32 0, i32 1
  store %struct.iwl_fwrt_shared_mem_cfg* %8, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %10 = call i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = call i32 @iwl_trans_grab_nic_access(%struct.TYPE_7__* %13, i64* %6)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %19 = load i32, i32* @IWL_FW_ERROR_DUMP_RXF, align 4
  %20 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %23 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %24 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %25 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iwl_fwrt_dump_rxf(%struct.iwl_fw_runtime* %23, %struct.iwl_fw_error_dump_data** %24, i32 %30, i64 0, i32 0)
  %32 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %33 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %34 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* @RXF_DIFF_FROM_PREV, align 8
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %39 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %37, %44
  %46 = call i32 @iwl_fwrt_dump_rxf(%struct.iwl_fw_runtime* %32, %struct.iwl_fw_error_dump_data** %33, i32 %36, i64 %45, i32 1)
  %47 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %63

52:                                               ; preds = %22
  %53 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %54 = load %struct.iwl_fw_error_dump_data**, %struct.iwl_fw_error_dump_data*** %4, align 8
  %55 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @LMAC2_PRPH_OFFSET, align 8
  %62 = call i32 @iwl_fwrt_dump_rxf(%struct.iwl_fw_runtime* %53, %struct.iwl_fw_error_dump_data** %54, i32 %60, i64 %61, i32 2)
  br label %63

63:                                               ; preds = %52, %22
  br label %64

64:                                               ; preds = %63, %17
  %65 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %66 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @iwl_trans_release_nic_access(%struct.TYPE_7__* %67, i64* %6)
  br label %69

69:                                               ; preds = %64, %16
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_fw_runtime*, i8*) #1

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.TYPE_7__*, i64*) #1

declare dso_local i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @iwl_fwrt_dump_rxf(%struct.iwl_fw_runtime*, %struct.iwl_fw_error_dump_data**, i32, i64, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.TYPE_7__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
