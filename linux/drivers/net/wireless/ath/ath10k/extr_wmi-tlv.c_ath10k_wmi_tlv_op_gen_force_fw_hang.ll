; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_force_fw_hang.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_force_fw_hang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_force_fw_hang_cmd = type { i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_FORCE_FW_HANG_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wmi tlv force fw hang\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32)* @ath10k_wmi_tlv_op_gen_force_fw_hang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_force_fw_hang(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_force_fw_hang_cmd*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %12 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %11, i32 40)
  store %struct.sk_buff* %12, %struct.sk_buff** %10, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.sk_buff* @ERR_PTR(i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %4, align 8
  br label %49

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %24, %struct.wmi_tlv** %9, align 8
  %25 = load i32, i32* @WMI_TLV_TAG_STRUCT_FORCE_FW_HANG_CMD, align 4
  %26 = call i8* @__cpu_to_le16(i32 %25)
  %27 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %28 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = call i8* @__cpu_to_le16(i32 16)
  %30 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %31 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %33 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.wmi_force_fw_hang_cmd*
  store %struct.wmi_force_fw_hang_cmd* %36, %struct.wmi_force_fw_hang_cmd** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i8* @__cpu_to_le32(i32 %37)
  %39 = load %struct.wmi_force_fw_hang_cmd*, %struct.wmi_force_fw_hang_cmd** %8, align 8
  %40 = getelementptr inbounds %struct.wmi_force_fw_hang_cmd, %struct.wmi_force_fw_hang_cmd* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @__cpu_to_le32(i32 %41)
  %43 = load %struct.wmi_force_fw_hang_cmd*, %struct.wmi_force_fw_hang_cmd** %8, align 8
  %44 = getelementptr inbounds %struct.wmi_force_fw_hang_cmd, %struct.wmi_force_fw_hang_cmd* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %46 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %47 = call i32 @ath10k_dbg(%struct.ath10k* %45, i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %4, align 8
  br label %49

49:                                               ; preds = %19, %15
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %50
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
