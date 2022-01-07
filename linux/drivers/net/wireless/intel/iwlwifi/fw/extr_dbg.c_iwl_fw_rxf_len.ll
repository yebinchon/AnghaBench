; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_rxf_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_rxf_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IWL_FW_ERROR_DUMP_RXF = common dso_local global i32 0, align 4
@MAX_NUM_LMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fwrt_shared_mem_cfg*)* @iwl_fw_rxf_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fw_rxf_len(%struct.iwl_fw_runtime* %0, %struct.iwl_fwrt_shared_mem_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_fw_runtime*, align 8
  %5 = alloca %struct.iwl_fwrt_shared_mem_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %4, align 8
  store %struct.iwl_fwrt_shared_mem_cfg* %1, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  store i64 8, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %4, align 8
  %10 = load i32, i32* @IWL_FW_ERROR_DUMP_RXF, align 4
  %11 = call i32 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @ADD_LEN(i32 %15, i32 %18, i64 %19)
  %21 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAX_NUM_LMAC, align 4
  %25 = icmp sgt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load i32, i32* @MAX_NUM_LMAC, align 4
  %31 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %14
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @ADD_LEN(i32 %41, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i32 @ADD_LEN(i32, i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
