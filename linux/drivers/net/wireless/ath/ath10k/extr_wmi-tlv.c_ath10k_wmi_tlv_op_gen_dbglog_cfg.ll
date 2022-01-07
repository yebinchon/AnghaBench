; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_dbglog_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_dbglog_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_dbglog_cmd = type { i8*, i8* }
%struct.wmi_tlv = type { i8*, i8*, i64 }

@WMI_TLV_DBGLOG_LOG_LEVEL_VERBOSE = common dso_local global i32 0, align 4
@WMI_TLV_DBGLOG_ALL_MODULES = common dso_local global i64 0, align 8
@WMI_TLV_DBGLOG_LOG_LEVEL_WARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_DEBUG_LOG_CONFIG_CMD = common dso_local global i64 0, align 8
@WMI_TLV_DBGLOG_PARAM_LOG_LEVEL = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_UINT32 = common dso_local global i64 0, align 8
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wmi tlv dbglog value 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i64, i32)* @ath10k_wmi_tlv_op_gen_dbglog_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_dbglog_cfg(%struct.ath10k* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_tlv_dbglog_cmd*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @WMI_TLV_DBGLOG_LOG_LEVEL_VERBOSE, align 4
  %20 = call i32 @WMI_TLV_DBGLOG_LOG_LEVEL_VALUE(i64 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i64, i64* @WMI_TLV_DBGLOG_ALL_MODULES, align 8
  %23 = load i32, i32* @WMI_TLV_DBGLOG_LOG_LEVEL_WARN, align 4
  %24 = call i32 @WMI_TLV_DBGLOG_LOG_LEVEL_VALUE(i64 %22, i32 %23)
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %21, %17
  store i64 0, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = add i64 64, %26
  store i64 %27, i64* %11, align 8
  %28 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %28, i64 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.sk_buff* @ERR_PTR(i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %4, align 8
  br label %87

37:                                               ; preds = %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = bitcast i8* %42 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %43, %struct.wmi_tlv** %9, align 8
  %44 = load i64, i64* @WMI_TLV_TAG_STRUCT_DEBUG_LOG_CONFIG_CMD, align 8
  %45 = call i8* @__cpu_to_le16(i64 %44)
  %46 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %47 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = call i8* @__cpu_to_le16(i64 16)
  %49 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %50 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %52 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = bitcast i8* %54 to %struct.wmi_tlv_dbglog_cmd*
  store %struct.wmi_tlv_dbglog_cmd* %55, %struct.wmi_tlv_dbglog_cmd** %8, align 8
  %56 = load i32, i32* @WMI_TLV_DBGLOG_PARAM_LOG_LEVEL, align 4
  %57 = call i8* @__cpu_to_le32(i32 %56)
  %58 = load %struct.wmi_tlv_dbglog_cmd*, %struct.wmi_tlv_dbglog_cmd** %8, align 8
  %59 = getelementptr inbounds %struct.wmi_tlv_dbglog_cmd, %struct.wmi_tlv_dbglog_cmd* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i8* @__cpu_to_le32(i32 %60)
  %62 = load %struct.wmi_tlv_dbglog_cmd*, %struct.wmi_tlv_dbglog_cmd** %8, align 8
  %63 = getelementptr inbounds %struct.wmi_tlv_dbglog_cmd, %struct.wmi_tlv_dbglog_cmd* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr i8, i8* %64, i64 24
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr i8, i8* %66, i64 16
  store i8* %67, i8** %14, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = bitcast i8* %68 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %69, %struct.wmi_tlv** %9, align 8
  %70 = load i64, i64* @WMI_TLV_TAG_ARRAY_UINT32, align 8
  %71 = call i8* @__cpu_to_le16(i64 %70)
  %72 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %73 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i8* @__cpu_to_le16(i64 %74)
  %76 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %77 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr i8, i8* %78, i64 24
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = getelementptr i8, i8* %80, i64 8
  store i8* %81, i8** %14, align 8
  %82 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %83 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @ath10k_dbg(%struct.ath10k* %82, i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %86, %struct.sk_buff** %4, align 8
  br label %87

87:                                               ; preds = %37, %33
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %88
}

declare dso_local i32 @WMI_TLV_DBGLOG_LOG_LEVEL_VALUE(i64, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i64) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
