; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pdev_set_quiet_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_pdev_set_quiet_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_set_quiet_cmd = type { i8*, i8*, i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_PDEV_SET_QUIET_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"wmi tlv quiet param: period %u duration %u enabled %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32, i32, i32)* @ath10k_wmi_tlv_op_gen_pdev_set_quiet_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_pdev_set_quiet_mode(%struct.ath10k* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_tlv_set_quiet_cmd*, align 8
  %13 = alloca %struct.wmi_tlv*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %16 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %15, i32 64)
  store %struct.sk_buff* %16, %struct.sk_buff** %14, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sk_buff* @ERR_PTR(i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  br label %67

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %28, %struct.wmi_tlv** %13, align 8
  %29 = load i32, i32* @WMI_TLV_TAG_STRUCT_PDEV_SET_QUIET_CMD, align 4
  %30 = call i8* @__cpu_to_le16(i32 %29)
  %31 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %32 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = call i8* @__cpu_to_le16(i32 40)
  %34 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %35 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %37 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to %struct.wmi_tlv_set_quiet_cmd*
  store %struct.wmi_tlv_set_quiet_cmd* %40, %struct.wmi_tlv_set_quiet_cmd** %12, align 8
  %41 = call i8* @__cpu_to_le32(i32 0)
  %42 = load %struct.wmi_tlv_set_quiet_cmd*, %struct.wmi_tlv_set_quiet_cmd** %12, align 8
  %43 = getelementptr inbounds %struct.wmi_tlv_set_quiet_cmd, %struct.wmi_tlv_set_quiet_cmd* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @__cpu_to_le32(i32 %44)
  %46 = load %struct.wmi_tlv_set_quiet_cmd*, %struct.wmi_tlv_set_quiet_cmd** %12, align 8
  %47 = getelementptr inbounds %struct.wmi_tlv_set_quiet_cmd, %struct.wmi_tlv_set_quiet_cmd* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @__cpu_to_le32(i32 %48)
  %50 = load %struct.wmi_tlv_set_quiet_cmd*, %struct.wmi_tlv_set_quiet_cmd** %12, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv_set_quiet_cmd, %struct.wmi_tlv_set_quiet_cmd* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @__cpu_to_le32(i32 %52)
  %54 = load %struct.wmi_tlv_set_quiet_cmd*, %struct.wmi_tlv_set_quiet_cmd** %12, align 8
  %55 = getelementptr inbounds %struct.wmi_tlv_set_quiet_cmd, %struct.wmi_tlv_set_quiet_cmd* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @__cpu_to_le32(i32 %56)
  %58 = load %struct.wmi_tlv_set_quiet_cmd*, %struct.wmi_tlv_set_quiet_cmd** %12, align 8
  %59 = getelementptr inbounds %struct.wmi_tlv_set_quiet_cmd, %struct.wmi_tlv_set_quiet_cmd* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %61 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ath10k_dbg(%struct.ath10k* %60, i32 %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %6, align 8
  br label %67

67:                                               ; preds = %23, %19
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %68
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
