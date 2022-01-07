; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_p2p_go_bcn_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_p2p_go_bcn_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_p2p_go_bcn_ie = type { i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_P2P_GO_SET_BEACON_IE = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"wmi tlv p2p go bcn ie for vdev %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i64, i64*)* @ath10k_wmi_tlv_op_gen_p2p_go_bcn_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_p2p_go_bcn_ie(%struct.ath10k* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.wmi_tlv_p2p_go_bcn_ie*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 2
  %17 = call i32 @roundup(i64 %16, i32 4)
  %18 = sext i32 %17 to i64
  %19 = add i64 64, %18
  store i64 %19, i64* %12, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %21 = load i64, i64* %12, align 8
  %22 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %20, i64 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.sk_buff* @ERR_PTR(i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  br label %101

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast i8* %34 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %35, %struct.wmi_tlv** %9, align 8
  %36 = load i32, i32* @WMI_TLV_TAG_STRUCT_P2P_GO_SET_BEACON_IE, align 4
  %37 = call i8* @__cpu_to_le16(i32 %36)
  %38 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %39 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = call i8* @__cpu_to_le16(i32 16)
  %41 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %42 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %44 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.wmi_tlv_p2p_go_bcn_ie*
  store %struct.wmi_tlv_p2p_go_bcn_ie* %47, %struct.wmi_tlv_p2p_go_bcn_ie** %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i8* @__cpu_to_le32(i64 %48)
  %50 = load %struct.wmi_tlv_p2p_go_bcn_ie*, %struct.wmi_tlv_p2p_go_bcn_ie** %8, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv_p2p_go_bcn_ie, %struct.wmi_tlv_p2p_go_bcn_ie* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 2
  %56 = call i8* @__cpu_to_le32(i64 %55)
  %57 = load %struct.wmi_tlv_p2p_go_bcn_ie*, %struct.wmi_tlv_p2p_go_bcn_ie** %8, align 8
  %58 = getelementptr inbounds %struct.wmi_tlv_p2p_go_bcn_ie, %struct.wmi_tlv_p2p_go_bcn_ie* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr i8, i8* %59, i64 24
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr i8, i8* %61, i64 16
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = bitcast i8* %63 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %64, %struct.wmi_tlv** %9, align 8
  %65 = load i32, i32* @WMI_TLV_TAG_ARRAY_BYTE, align 4
  %66 = call i8* @__cpu_to_le16(i32 %65)
  %67 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %68 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 2
  %73 = call i32 @roundup(i64 %72, i32 4)
  %74 = call i8* @__cpu_to_le16(i32 %73)
  %75 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %76 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %78 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %7, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 2
  %85 = call i32 @memcpy(i64 %79, i64* %80, i64 %84)
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr i8, i8* %86, i64 24
  store i8* %87, i8** %11, align 8
  %88 = load i64*, i64** %7, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 2
  %92 = call i32 @roundup(i64 %91, i32 4)
  %93 = load i8*, i8** %11, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr i8, i8* %93, i64 %94
  store i8* %95, i8** %11, align 8
  %96 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %97 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @ath10k_dbg(%struct.ath10k* %96, i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %100, %struct.sk_buff** %4, align 8
  br label %101

101:                                              ; preds = %29, %25
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %102
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i64, i64*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
