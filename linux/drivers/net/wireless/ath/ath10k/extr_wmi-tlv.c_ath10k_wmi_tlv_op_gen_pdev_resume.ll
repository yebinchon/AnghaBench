; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pdev_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pdev_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_resume_cmd = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_PDEV_RESUME_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wmi tlv pdev resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*)* @ath10k_wmi_tlv_op_gen_pdev_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_pdev_resume(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.wmi_tlv_resume_cmd*, align 8
  %5 = alloca %struct.wmi_tlv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %7, i32 28)
  store %struct.sk_buff* %8, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.sk_buff* @ERR_PTR(i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %2, align 8
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %20, %struct.wmi_tlv** %5, align 8
  %21 = load i32, i32* @WMI_TLV_TAG_STRUCT_PDEV_RESUME_CMD, align 4
  %22 = call i8* @__cpu_to_le16(i32 %21)
  %23 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %24 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = call i8* @__cpu_to_le16(i32 4)
  %26 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %27 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.wmi_tlv*, %struct.wmi_tlv** %5, align 8
  %29 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.wmi_tlv_resume_cmd*
  store %struct.wmi_tlv_resume_cmd* %32, %struct.wmi_tlv_resume_cmd** %4, align 8
  %33 = call i32 @__cpu_to_le32(i32 0)
  %34 = load %struct.wmi_tlv_resume_cmd*, %struct.wmi_tlv_resume_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.wmi_tlv_resume_cmd, %struct.wmi_tlv_resume_cmd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %37 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %38 = call i32 @ath10k_dbg(%struct.ath10k* %36, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %2, align 8
  br label %40

40:                                               ; preds = %15, %11
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %41
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
