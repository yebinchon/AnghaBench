; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_gen_wow_host_wakeup_ind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_gen_wow_host_wakeup_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_wow_host_wakeup_ind = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_WOW_HOSTWAKEUP_FROM_SLEEP_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wmi tlv wow host wakeup ind\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*)* @ath10k_wmi_tlv_gen_wow_host_wakeup_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_gen_wow_host_wakeup_ind(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_tlv_wow_host_wakeup_ind*, align 8
  %5 = alloca %struct.wmi_tlv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i64 28, i64* %7, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %8, i64 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.sk_buff* @ERR_PTR(i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %21, %struct.wmi_tlv** %5, align 8
  %22 = load i32, i32* @WMI_TLV_TAG_STRUCT_WOW_HOSTWAKEUP_FROM_SLEEP_CMD, align 4
  %23 = call i8* @__cpu_to_le16(i32 %22)
  %24 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %25 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = call i8* @__cpu_to_le16(i32 4)
  %27 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %28 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %30 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.wmi_tlv_wow_host_wakeup_ind*
  store %struct.wmi_tlv_wow_host_wakeup_ind* %33, %struct.wmi_tlv_wow_host_wakeup_ind** %4, align 8
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %36 = call i32 @ath10k_dbg(%struct.ath10k* %34, i32 %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %2, align 8
  br label %38

38:                                               ; preds = %17, %13
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %39
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
