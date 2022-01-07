; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_spectral_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_vdev_spectral_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_spectral_enable_cmd = type { i8*, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_VDEV_SPECTRAL_ENABLE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32, i32)* @ath10k_wmi_tlv_op_gen_vdev_spectral_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_vdev_spectral_enable(%struct.ath10k* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmi_vdev_spectral_enable_cmd*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.wmi_tlv*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 48, i64* %14, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %16 = load i64, i64* %14, align 8
  %17 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %15, i64 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.sk_buff* @ERR_PTR(i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %5, align 8
  br label %56

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = bitcast i8* %29 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %30, %struct.wmi_tlv** %12, align 8
  %31 = load i32, i32* @WMI_TLV_TAG_STRUCT_VDEV_SPECTRAL_ENABLE_CMD, align 4
  %32 = call i8* @__cpu_to_le16(i32 %31)
  %33 = load %struct.wmi_tlv*, %struct.wmi_tlv** %12, align 8
  %34 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = call i8* @__cpu_to_le16(i32 24)
  %36 = load %struct.wmi_tlv*, %struct.wmi_tlv** %12, align 8
  %37 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.wmi_tlv*, %struct.wmi_tlv** %12, align 8
  %39 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to %struct.wmi_vdev_spectral_enable_cmd*
  store %struct.wmi_vdev_spectral_enable_cmd* %42, %struct.wmi_vdev_spectral_enable_cmd** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i8* @__cpu_to_le32(i32 %43)
  %45 = load %struct.wmi_vdev_spectral_enable_cmd*, %struct.wmi_vdev_spectral_enable_cmd** %10, align 8
  %46 = getelementptr inbounds %struct.wmi_vdev_spectral_enable_cmd, %struct.wmi_vdev_spectral_enable_cmd* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = load %struct.wmi_vdev_spectral_enable_cmd*, %struct.wmi_vdev_spectral_enable_cmd** %10, align 8
  %50 = getelementptr inbounds %struct.wmi_vdev_spectral_enable_cmd, %struct.wmi_vdev_spectral_enable_cmd* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @__cpu_to_le32(i32 %51)
  %53 = load %struct.wmi_vdev_spectral_enable_cmd*, %struct.wmi_vdev_spectral_enable_cmd** %10, align 8
  %54 = getelementptr inbounds %struct.wmi_vdev_spectral_enable_cmd, %struct.wmi_vdev_spectral_enable_cmd* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %5, align 8
  br label %56

56:                                               ; preds = %24, %20
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %57
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
