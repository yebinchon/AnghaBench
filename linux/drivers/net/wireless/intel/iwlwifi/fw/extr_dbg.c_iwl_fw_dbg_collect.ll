; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_collect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_dbg.c_iwl_fw_dbg_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32 }
%struct.iwl_fw_dbg_trigger_tlv = type { i32, i32, i32, i32 }
%struct.iwl_fw_dump_desc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IWL_FW_DBG_FORCE_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Force restart: trigger %d fired.\0A\00", align 1
@IWL_FW_DBG_TRIGGER_MONITOR_ONLY = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_fw_dbg_collect(%struct.iwl_fw_runtime* %0, i32 %1, i8* %2, i64 %3, %struct.iwl_fw_dbg_trigger_tlv* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_fw_runtime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iwl_fw_dbg_trigger_tlv*, align 8
  %12 = alloca %struct.iwl_fw_dump_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.iwl_fw_dbg_trigger_tlv* %4, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  %17 = icmp ne %struct.iwl_fw_dbg_trigger_tlv* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %5
  %19 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  %20 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le16_to_cpu(i32 %21)
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %15, align 8
  %24 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  %25 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %93

30:                                               ; preds = %18
  %31 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  %32 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IWL_FW_DBG_FORCE_RESTART, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @IWL_WARN(%struct.iwl_fw_runtime* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iwl_force_nmi(i32 %43)
  store i32 0, i32* %6, align 4
  br label %93

45:                                               ; preds = %30
  %46 = load i64, i64* %15, align 8
  %47 = call i32 @cpu_to_le16(i64 %46)
  %48 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  %49 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  %51 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IWL_FW_DBG_TRIGGER_MONITOR_ONLY, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %14, align 4
  %55 = load %struct.iwl_fw_dbg_trigger_tlv*, %struct.iwl_fw_dbg_trigger_tlv** %11, align 8
  %56 = getelementptr inbounds %struct.iwl_fw_dbg_trigger_tlv, %struct.iwl_fw_dbg_trigger_tlv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load i32, i32* @USEC_PER_MSEC, align 4
  %60 = mul i32 %58, %59
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %45, %5
  %62 = load i64, i64* %10, align 8
  %63 = add i64 16, %62
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call %struct.iwl_fw_dump_desc* @kzalloc(i32 %64, i32 %65)
  store %struct.iwl_fw_dump_desc* %66, %struct.iwl_fw_dump_desc** %12, align 8
  %67 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %12, align 8
  %68 = icmp ne %struct.iwl_fw_dump_desc* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %93

72:                                               ; preds = %61
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %12, align 8
  %75 = getelementptr inbounds %struct.iwl_fw_dump_desc, %struct.iwl_fw_dump_desc* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @cpu_to_le32(i32 %76)
  %78 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %12, align 8
  %79 = getelementptr inbounds %struct.iwl_fw_dump_desc, %struct.iwl_fw_dump_desc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %12, align 8
  %82 = getelementptr inbounds %struct.iwl_fw_dump_desc, %struct.iwl_fw_dump_desc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @memcpy(i32 %84, i8* %85, i64 %86)
  %88 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %7, align 8
  %89 = load %struct.iwl_fw_dump_desc*, %struct.iwl_fw_dump_desc** %12, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @iwl_fw_dbg_collect_desc(%struct.iwl_fw_runtime* %88, %struct.iwl_fw_dump_desc* %89, i32 %90, i32 %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %72, %69, %37, %29
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_fw_runtime*, i8*, i32) #1

declare dso_local i32 @iwl_force_nmi(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.iwl_fw_dump_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @iwl_fw_dbg_collect_desc(%struct.iwl_fw_runtime*, %struct.iwl_fw_dump_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
