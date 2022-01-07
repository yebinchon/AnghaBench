; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_set_ap_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_set_ap_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_ap_ps_peer_cmd = type { %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_AP_PS_PEER_CMD = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"wmi tlv ap ps param\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32)* @ath10k_wmi_tlv_op_gen_set_ap_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_set_ap_ps(%struct.ath10k* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_ap_ps_peer_cmd*, align 8
  %13 = alloca %struct.wmi_tlv*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  br label %70

21:                                               ; preds = %5
  %22 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %23 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %22, i32 56)
  store %struct.sk_buff* %23, %struct.sk_buff** %14, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.sk_buff* @ERR_PTR(i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %6, align 8
  br label %70

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %35, %struct.wmi_tlv** %13, align 8
  %36 = load i32, i32* @WMI_TLV_TAG_STRUCT_AP_PS_PEER_CMD, align 4
  %37 = call i8* @__cpu_to_le16(i32 %36)
  %38 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %39 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = call i8* @__cpu_to_le16(i32 32)
  %41 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %42 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %44 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.wmi_ap_ps_peer_cmd*
  store %struct.wmi_ap_ps_peer_cmd* %47, %struct.wmi_ap_ps_peer_cmd** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @__cpu_to_le32(i32 %48)
  %50 = load %struct.wmi_ap_ps_peer_cmd*, %struct.wmi_ap_ps_peer_cmd** %12, align 8
  %51 = getelementptr inbounds %struct.wmi_ap_ps_peer_cmd, %struct.wmi_ap_ps_peer_cmd* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @__cpu_to_le32(i32 %52)
  %54 = load %struct.wmi_ap_ps_peer_cmd*, %struct.wmi_ap_ps_peer_cmd** %12, align 8
  %55 = getelementptr inbounds %struct.wmi_ap_ps_peer_cmd, %struct.wmi_ap_ps_peer_cmd* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @__cpu_to_le32(i32 %56)
  %58 = load %struct.wmi_ap_ps_peer_cmd*, %struct.wmi_ap_ps_peer_cmd** %12, align 8
  %59 = getelementptr inbounds %struct.wmi_ap_ps_peer_cmd, %struct.wmi_ap_ps_peer_cmd* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.wmi_ap_ps_peer_cmd*, %struct.wmi_ap_ps_peer_cmd** %12, align 8
  %61 = getelementptr inbounds %struct.wmi_ap_ps_peer_cmd, %struct.wmi_ap_ps_peer_cmd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @ether_addr_copy(i32 %63, i32* %64)
  %66 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %67 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %68 = call i32 @ath10k_dbg(%struct.ath10k* %66, i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %6, align 8
  br label %70

70:                                               ; preds = %30, %26, %17
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %71
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
