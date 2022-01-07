; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_set_param_cmd = type { i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_VDEV_SET_PARAM_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wmi tlv vdev %d set param %d value 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32, i32)* @ath10k_wmi_tlv_op_gen_vdev_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_vdev_set_param(%struct.ath10k* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmi_vdev_set_param_cmd*, align 8
  %11 = alloca %struct.wmi_tlv*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %14 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %13, i32 48)
  store %struct.sk_buff* %14, %struct.sk_buff** %12, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %26, %struct.wmi_tlv** %11, align 8
  %27 = load i32, i32* @WMI_TLV_TAG_STRUCT_VDEV_SET_PARAM_CMD, align 4
  %28 = call i8* @__cpu_to_le16(i32 %27)
  %29 = load %struct.wmi_tlv*, %struct.wmi_tlv** %11, align 8
  %30 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = call i8* @__cpu_to_le16(i32 24)
  %32 = load %struct.wmi_tlv*, %struct.wmi_tlv** %11, align 8
  %33 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.wmi_tlv*, %struct.wmi_tlv** %11, align 8
  %35 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to %struct.wmi_vdev_set_param_cmd*
  store %struct.wmi_vdev_set_param_cmd* %38, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i8* @__cpu_to_le32(i32 %39)
  %41 = load %struct.wmi_vdev_set_param_cmd*, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %42 = getelementptr inbounds %struct.wmi_vdev_set_param_cmd, %struct.wmi_vdev_set_param_cmd* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @__cpu_to_le32(i32 %43)
  %45 = load %struct.wmi_vdev_set_param_cmd*, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %46 = getelementptr inbounds %struct.wmi_vdev_set_param_cmd, %struct.wmi_vdev_set_param_cmd* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = load %struct.wmi_vdev_set_param_cmd*, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %50 = getelementptr inbounds %struct.wmi_vdev_set_param_cmd, %struct.wmi_vdev_set_param_cmd* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %52 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ath10k_dbg(%struct.ath10k* %51, i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %5, align 8
  br label %58

58:                                               ; preds = %21, %17
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %59
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
