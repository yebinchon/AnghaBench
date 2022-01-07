; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-dbg-tlv.c_iwl_dbg_tlv_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iwl_ucode_tlv = type { i32, i32* }
%struct.iwl_fw_ini_header = type { i32, i32 }

@IWL_UCODE_TLV_DEBUG_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"WRT: read TLV 0x%x, apply point %d\0A\00", align 1
@IWL_DBG_TLV_TYPE_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"WRT: Unsupported TLV 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"WRT: Unsupported TLV 0x%x version %u\0A\00", align 1
@IWL_INI_CFG_STATE_NOT_LOADED = common dso_local global i32 0, align 4
@IWL_INI_CFG_STATE_LOADED = common dso_local global i32 0, align 4
@IWL_INI_CFG_STATE_CORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_dbg_tlv_alloc(%struct.iwl_trans* %0, %struct.iwl_ucode_tlv* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca %struct.iwl_ucode_tlv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_fw_ini_header*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store %struct.iwl_ucode_tlv* %1, %struct.iwl_ucode_tlv** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.iwl_ucode_tlv*, %struct.iwl_ucode_tlv** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_ucode_tlv, %struct.iwl_ucode_tlv* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_fw_ini_header*
  store %struct.iwl_fw_ini_header* %17, %struct.iwl_fw_ini_header** %7, align 8
  %18 = load %struct.iwl_ucode_tlv*, %struct.iwl_ucode_tlv** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_ucode_tlv, %struct.iwl_ucode_tlv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @le32_to_cpu(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.iwl_fw_ini_header*, %struct.iwl_fw_ini_header** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_fw_ini_header, %struct.iwl_fw_ini_header* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le32_to_cpu(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @IWL_UCODE_TLV_DEBUG_BASE, align 8
  %28 = sub nsw i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  br label %39

35:                                               ; preds = %3
  %36 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %37 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32* [ %34, %31 ], [ %38, %35 ]
  store i32* %40, i32** %11, align 8
  %41 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @IWL_DEBUG_FW(%struct.iwl_trans* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @IWL_DBG_TLV_TYPE_NUM, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 (%struct.iwl_trans*, i8*, i64, ...) @IWL_ERR(%struct.iwl_trans* %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %73

52:                                               ; preds = %39
  %53 = load %struct.iwl_ucode_tlv*, %struct.iwl_ucode_tlv** %5, align 8
  %54 = call i32 @iwl_dbg_tlv_ver_support(%struct.iwl_ucode_tlv* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.iwl_fw_ini_header*, %struct.iwl_fw_ini_header** %7, align 8
  %60 = getelementptr inbounds %struct.iwl_fw_ini_header, %struct.iwl_fw_ini_header* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le32_to_cpu(i32 %61)
  %63 = call i32 (%struct.iwl_trans*, i8*, i64, ...) @IWL_ERR(%struct.iwl_trans* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %62)
  br label %73

64:                                               ; preds = %52
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IWL_INI_CFG_STATE_NOT_LOADED, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @IWL_INI_CFG_STATE_LOADED, align 4
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  br label %76

73:                                               ; preds = %56, %48
  %74 = load i32, i32* @IWL_INI_CFG_STATE_CORRUPTED, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %72
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_FW(%struct.iwl_trans*, i8*, i64, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*, i64, ...) #1

declare dso_local i32 @iwl_dbg_tlv_ver_support(%struct.iwl_ucode_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
