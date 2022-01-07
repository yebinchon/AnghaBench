; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_wow_del_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_wow_del_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_wow_del_pattern_cmd = type { i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_WOW_DEL_PATTERN_CMD = common dso_local global i32 0, align 4
@WOW_BITMAP_PATTERN = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"wmi tlv wow del pattern vdev_id %d pattern_id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32)* @ath10k_wmi_tlv_op_gen_wow_del_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_wow_del_pattern(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_tlv_wow_del_pattern_cmd*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 48, i64* %11, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %12, i64 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  br label %56

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %25, %struct.wmi_tlv** %9, align 8
  %26 = load i32, i32* @WMI_TLV_TAG_STRUCT_WOW_DEL_PATTERN_CMD, align 4
  %27 = call i8* @__cpu_to_le16(i32 %26)
  %28 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %29 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = call i8* @__cpu_to_le16(i32 24)
  %31 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %32 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %34 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = bitcast i8* %36 to %struct.wmi_tlv_wow_del_pattern_cmd*
  store %struct.wmi_tlv_wow_del_pattern_cmd* %37, %struct.wmi_tlv_wow_del_pattern_cmd** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @__cpu_to_le32(i32 %38)
  %40 = load %struct.wmi_tlv_wow_del_pattern_cmd*, %struct.wmi_tlv_wow_del_pattern_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.wmi_tlv_wow_del_pattern_cmd, %struct.wmi_tlv_wow_del_pattern_cmd* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @__cpu_to_le32(i32 %42)
  %44 = load %struct.wmi_tlv_wow_del_pattern_cmd*, %struct.wmi_tlv_wow_del_pattern_cmd** %8, align 8
  %45 = getelementptr inbounds %struct.wmi_tlv_wow_del_pattern_cmd, %struct.wmi_tlv_wow_del_pattern_cmd* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @WOW_BITMAP_PATTERN, align 4
  %47 = call i8* @__cpu_to_le32(i32 %46)
  %48 = load %struct.wmi_tlv_wow_del_pattern_cmd*, %struct.wmi_tlv_wow_del_pattern_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.wmi_tlv_wow_del_pattern_cmd, %struct.wmi_tlv_wow_del_pattern_cmd* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %51 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ath10k_dbg(%struct.ath10k* %50, i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %4, align 8
  br label %56

56:                                               ; preds = %21, %17
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %57
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
