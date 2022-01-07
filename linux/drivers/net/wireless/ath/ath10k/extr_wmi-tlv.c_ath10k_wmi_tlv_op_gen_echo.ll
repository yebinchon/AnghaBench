; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_echo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_echo_cmd = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_ECHO_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wmi tlv echo value 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32)* @ath10k_wmi_tlv_op_gen_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_echo(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi_echo_cmd*, align 8
  %7 = alloca %struct.wmi_tlv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 28, i64* %10, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %11, i64 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sk_buff* @ERR_PTR(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %3, align 8
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %26, %struct.wmi_tlv** %7, align 8
  %27 = load i32, i32* @WMI_TLV_TAG_STRUCT_ECHO_CMD, align 4
  %28 = call i8* @__cpu_to_le16(i32 %27)
  %29 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %30 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = call i8* @__cpu_to_le16(i32 4)
  %32 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %33 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.wmi_tlv*, %struct.wmi_tlv** %7, align 8
  %35 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to %struct.wmi_echo_cmd*
  store %struct.wmi_echo_cmd* %38, %struct.wmi_echo_cmd** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.wmi_echo_cmd*, %struct.wmi_echo_cmd** %6, align 8
  %42 = getelementptr inbounds %struct.wmi_echo_cmd, %struct.wmi_echo_cmd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr i8, i8* %43, i64 24
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr i8, i8* %45, i64 4
  store i8* %46, i8** %9, align 8
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ath10k_dbg(%struct.ath10k* %47, i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %3, align 8
  br label %52

52:                                               ; preds = %20, %16
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %53
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
