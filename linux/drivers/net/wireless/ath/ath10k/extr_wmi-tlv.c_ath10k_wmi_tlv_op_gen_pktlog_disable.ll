; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pktlog_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pktlog_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_pktlog_disable = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_PDEV_PKTLOG_DISABLE_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"wmi tlv pktlog disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*)* @ath10k_wmi_tlv_op_gen_pktlog_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_pktlog_disable(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_tlv_pktlog_disable*, align 8
  %5 = alloca %struct.wmi_tlv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i64 28, i64* %8, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %9, i64 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.sk_buff* @ERR_PTR(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %2, align 8
  br label %45

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %24, %struct.wmi_tlv** %5, align 8
  %25 = load i32, i32* @WMI_TLV_TAG_STRUCT_PDEV_PKTLOG_DISABLE_CMD, align 4
  %26 = call i8* @__cpu_to_le16(i32 %25)
  %27 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %28 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = call i8* @__cpu_to_le16(i32 4)
  %30 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %31 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %33 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = bitcast i8* %35 to %struct.wmi_tlv_pktlog_disable*
  store %struct.wmi_tlv_pktlog_disable* %36, %struct.wmi_tlv_pktlog_disable** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr i8, i8* %37, i64 24
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr i8, i8* %39, i64 4
  store i8* %40, i8** %7, align 8
  %41 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %42 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %43 = call i32 @ath10k_dbg(%struct.ath10k* %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %2, align 8
  br label %45

45:                                               ; preds = %18, %14
  %46 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %46
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
