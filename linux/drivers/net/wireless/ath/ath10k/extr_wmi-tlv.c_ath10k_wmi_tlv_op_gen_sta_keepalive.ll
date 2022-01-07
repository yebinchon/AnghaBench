; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_sta_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_sta_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_sta_keepalive_arg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_tlv_sta_keepalive_cmd = type { i8*, i8*, i8*, i8* }
%struct.wmi_sta_keepalive_arp_resp = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_STA_KEEPALIVE_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_STA_KEEPALVE_ARP_RESPONSE = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"wmi tlv sta keepalive vdev %d enabled %d method %d interval %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)* @ath10k_wmi_tlv_op_gen_sta_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_sta_keepalive(%struct.ath10k* %0, %struct.wmi_sta_keepalive_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_sta_keepalive_arg*, align 8
  %6 = alloca %struct.wmi_tlv_sta_keepalive_cmd*, align 8
  %7 = alloca %struct.wmi_sta_keepalive_arp_resp*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_sta_keepalive_arg* %1, %struct.wmi_sta_keepalive_arg** %5, align 8
  store i64 92, i64* %11, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %13 = load i64, i64* %11, align 8
  %14 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %12, i64 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sk_buff* @ERR_PTR(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %3, align 8
  br label %116

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %27, %struct.wmi_tlv** %9, align 8
  %28 = load i32, i32* @WMI_TLV_TAG_STRUCT_STA_KEEPALIVE_CMD, align 4
  %29 = call i8* @__cpu_to_le16(i32 %28)
  %30 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %31 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = call i8* @__cpu_to_le16(i32 32)
  %33 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %34 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %36 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.wmi_tlv_sta_keepalive_cmd*
  store %struct.wmi_tlv_sta_keepalive_cmd* %39, %struct.wmi_tlv_sta_keepalive_cmd** %6, align 8
  %40 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %41 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @__cpu_to_le32(i32 %42)
  %44 = load %struct.wmi_tlv_sta_keepalive_cmd*, %struct.wmi_tlv_sta_keepalive_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.wmi_tlv_sta_keepalive_cmd, %struct.wmi_tlv_sta_keepalive_cmd* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %47 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @__cpu_to_le32(i32 %48)
  %50 = load %struct.wmi_tlv_sta_keepalive_cmd*, %struct.wmi_tlv_sta_keepalive_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv_sta_keepalive_cmd, %struct.wmi_tlv_sta_keepalive_cmd* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %53 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @__cpu_to_le32(i32 %54)
  %56 = load %struct.wmi_tlv_sta_keepalive_cmd*, %struct.wmi_tlv_sta_keepalive_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.wmi_tlv_sta_keepalive_cmd, %struct.wmi_tlv_sta_keepalive_cmd* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %59 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @__cpu_to_le32(i32 %60)
  %62 = load %struct.wmi_tlv_sta_keepalive_cmd*, %struct.wmi_tlv_sta_keepalive_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.wmi_tlv_sta_keepalive_cmd, %struct.wmi_tlv_sta_keepalive_cmd* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr i8, i8* %64, i64 24
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr i8, i8* %66, i64 32
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = bitcast i8* %68 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %69, %struct.wmi_tlv** %9, align 8
  %70 = load i32, i32* @WMI_TLV_TAG_STRUCT_STA_KEEPALVE_ARP_RESPONSE, align 4
  %71 = call i8* @__cpu_to_le16(i32 %70)
  %72 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %73 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = call i8* @__cpu_to_le16(i32 12)
  %75 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %76 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %78 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = bitcast i8* %80 to %struct.wmi_sta_keepalive_arp_resp*
  store %struct.wmi_sta_keepalive_arp_resp* %81, %struct.wmi_sta_keepalive_arp_resp** %7, align 8
  %82 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %83 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wmi_sta_keepalive_arp_resp*, %struct.wmi_sta_keepalive_arp_resp** %7, align 8
  %86 = getelementptr inbounds %struct.wmi_sta_keepalive_arp_resp, %struct.wmi_sta_keepalive_arp_resp* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %88 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wmi_sta_keepalive_arp_resp*, %struct.wmi_sta_keepalive_arp_resp** %7, align 8
  %91 = getelementptr inbounds %struct.wmi_sta_keepalive_arp_resp, %struct.wmi_sta_keepalive_arp_resp* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.wmi_sta_keepalive_arp_resp*, %struct.wmi_sta_keepalive_arp_resp** %7, align 8
  %93 = getelementptr inbounds %struct.wmi_sta_keepalive_arp_resp, %struct.wmi_sta_keepalive_arp_resp* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %97 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ether_addr_copy(i32 %95, i32 %98)
  %100 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %101 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %102 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %103 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %106 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %109 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %112 = getelementptr inbounds %struct.wmi_sta_keepalive_arg, %struct.wmi_sta_keepalive_arg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ath10k_dbg(%struct.ath10k* %100, i32 %101, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %115, %struct.sk_buff** %3, align 8
  br label %116

116:                                              ; preds = %21, %17
  %117 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %117
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
