; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_txf_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_txf_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@IWL_FW_ERROR_DUMP_TXF = common dso_local global i32 0, align 4
@MAX_NUM_LMAC = common dso_local global i32 0, align 4
@IWL_FW_ERROR_DUMP_INTERNAL_TXF = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_fw_runtime*, %struct.iwl_fwrt_shared_mem_cfg*)* @iwl_fw_txf_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_fw_txf_len(%struct.iwl_fw_runtime* %0, %struct.iwl_fwrt_shared_mem_cfg* %1) #0 {
  %3 = alloca %struct.iwl_fw_runtime*, align 8
  %4 = alloca %struct.iwl_fwrt_shared_mem_cfg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %3, align 8
  store %struct.iwl_fwrt_shared_mem_cfg* %1, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  store i64 8, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %10 = load i32, i32* @IWL_FW_ERROR_DUMP_TXF, align 4
  %11 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %65

14:                                               ; preds = %2
  %15 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MAX_NUM_LMAC, align 4
  %19 = icmp sgt i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load i32, i32* @MAX_NUM_LMAC, align 4
  %25 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %14
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %61, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %43, i32 0, i32 3
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @ADD_LEN(i32 %42, i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %41
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %35

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %28

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64, %13
  %66 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %67 = load i32, i32* @IWL_FW_ERROR_DUMP_INTERNAL_TXF, align 4
  %68 = call i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* @IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG, align 4
  %76 = call i64 @fw_has_capa(i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70, %65
  br label %102

79:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %98, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  %83 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @ARRAY_SIZE(i32* %84)
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.iwl_fwrt_shared_mem_cfg*, %struct.iwl_fwrt_shared_mem_cfg** %4, align 8
  %90 = getelementptr inbounds %struct.iwl_fwrt_shared_mem_cfg, %struct.iwl_fwrt_shared_mem_cfg* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @ADD_LEN(i32 %88, i32 %95, i64 %96)
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %80

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @iwl_fw_dbg_type_on(%struct.iwl_fw_runtime*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ADD_LEN(i32, i32, i64) #1

declare dso_local i64 @fw_has_capa(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
