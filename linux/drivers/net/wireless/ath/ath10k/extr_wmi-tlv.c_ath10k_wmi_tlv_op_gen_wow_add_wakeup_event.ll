; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_wow_add_wakeup_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_wow_add_wakeup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_wow_add_del_event_cmd = type { i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_WOW_ADD_DEL_EVT_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"wmi tlv wow add wakeup event %s enable %d vdev_id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32, i32)* @ath10k_wmi_tlv_op_gen_wow_add_wakeup_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_wow_add_wakeup_event(%struct.ath10k* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmi_tlv_wow_add_del_event_cmd*, align 8
  %11 = alloca %struct.wmi_tlv*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 48, i64* %13, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %15 = load i64, i64* %13, align 8
  %16 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %14, i64 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %12, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sk_buff* @ERR_PTR(i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  br label %61

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %27, %struct.wmi_tlv** %11, align 8
  %28 = load i32, i32* @WMI_TLV_TAG_STRUCT_WOW_ADD_DEL_EVT_CMD, align 4
  %29 = call i8* @__cpu_to_le16(i32 %28)
  %30 = load %struct.wmi_tlv*, %struct.wmi_tlv** %11, align 8
  %31 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = call i8* @__cpu_to_le16(i32 24)
  %33 = load %struct.wmi_tlv*, %struct.wmi_tlv** %11, align 8
  %34 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wmi_tlv*, %struct.wmi_tlv** %11, align 8
  %36 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.wmi_tlv_wow_add_del_event_cmd*
  store %struct.wmi_tlv_wow_add_del_event_cmd* %39, %struct.wmi_tlv_wow_add_del_event_cmd** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @__cpu_to_le32(i32 %40)
  %42 = load %struct.wmi_tlv_wow_add_del_event_cmd*, %struct.wmi_tlv_wow_add_del_event_cmd** %10, align 8
  %43 = getelementptr inbounds %struct.wmi_tlv_wow_add_del_event_cmd, %struct.wmi_tlv_wow_add_del_event_cmd* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @__cpu_to_le32(i32 %44)
  %46 = load %struct.wmi_tlv_wow_add_del_event_cmd*, %struct.wmi_tlv_wow_add_del_event_cmd** %10, align 8
  %47 = getelementptr inbounds %struct.wmi_tlv_wow_add_del_event_cmd, %struct.wmi_tlv_wow_add_del_event_cmd* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = call i8* @__cpu_to_le32(i32 %49)
  %51 = load %struct.wmi_tlv_wow_add_del_event_cmd*, %struct.wmi_tlv_wow_add_del_event_cmd** %10, align 8
  %52 = getelementptr inbounds %struct.wmi_tlv_wow_add_del_event_cmd, %struct.wmi_tlv_wow_add_del_event_cmd* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %54 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @wow_wakeup_event(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ath10k_dbg(%struct.ath10k* %53, i32 %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %5, align 8
  br label %61

61:                                               ; preds = %23, %19
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %62
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wow_wakeup_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
