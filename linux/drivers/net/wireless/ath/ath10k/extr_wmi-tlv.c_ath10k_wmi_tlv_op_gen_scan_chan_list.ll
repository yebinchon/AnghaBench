; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_scan_chan_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_scan_chan_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_scan_chan_list_arg = type { i32, %struct.wmi_channel_arg* }
%struct.wmi_channel_arg = type { i32 }
%struct.wmi_tlv_scan_chan_list_cmd = type { i32 }
%struct.wmi_channel = type { i32 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_SCAN_CHAN_LIST_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_STRUCT = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_CHANNEL = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"wmi tlv scan chan list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_scan_chan_list_arg*)* @ath10k_wmi_tlv_op_gen_scan_chan_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_scan_chan_list(%struct.ath10k* %0, %struct.wmi_scan_chan_list_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_scan_chan_list_arg*, align 8
  %6 = alloca %struct.wmi_tlv_scan_chan_list_cmd*, align 8
  %7 = alloca %struct.wmi_channel*, align 8
  %8 = alloca %struct.wmi_channel_arg*, align 8
  %9 = alloca %struct.wmi_tlv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_scan_chan_list_arg* %1, %struct.wmi_scan_chan_list_arg** %5, align 8
  %16 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %17 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 28
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = add i64 24, %21
  %23 = add i64 28, %22
  store i64 %23, i64* %12, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %24, i64 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.sk_buff* @ERR_PTR(i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %3, align 8
  br label %124

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = bitcast i8* %38 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %39, %struct.wmi_tlv** %9, align 8
  %40 = load i32, i32* @WMI_TLV_TAG_STRUCT_SCAN_CHAN_LIST_CMD, align 4
  %41 = call i8* @__cpu_to_le16(i32 %40)
  %42 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %43 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = call i8* @__cpu_to_le16(i32 4)
  %45 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %46 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %48 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = bitcast i8* %50 to %struct.wmi_tlv_scan_chan_list_cmd*
  store %struct.wmi_tlv_scan_chan_list_cmd* %51, %struct.wmi_tlv_scan_chan_list_cmd** %6, align 8
  %52 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %53 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @__cpu_to_le32(i32 %54)
  %56 = load %struct.wmi_tlv_scan_chan_list_cmd*, %struct.wmi_tlv_scan_chan_list_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.wmi_tlv_scan_chan_list_cmd, %struct.wmi_tlv_scan_chan_list_cmd* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = getelementptr i8, i8* %58, i64 24
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr i8, i8* %60, i64 4
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = bitcast i8* %62 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %63, %struct.wmi_tlv** %9, align 8
  %64 = load i32, i32* @WMI_TLV_TAG_ARRAY_STRUCT, align 4
  %65 = call i8* @__cpu_to_le16(i32 %64)
  %66 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %67 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i8* @__cpu_to_le16(i32 %69)
  %71 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %72 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %74 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %111, %33
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %80 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load %struct.wmi_scan_chan_list_arg*, %struct.wmi_scan_chan_list_arg** %5, align 8
  %85 = getelementptr inbounds %struct.wmi_scan_chan_list_arg, %struct.wmi_scan_chan_list_arg* %84, i32 0, i32 1
  %86 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.wmi_channel_arg, %struct.wmi_channel_arg* %86, i64 %88
  store %struct.wmi_channel_arg* %89, %struct.wmi_channel_arg** %8, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = bitcast i8* %90 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %91, %struct.wmi_tlv** %9, align 8
  %92 = load i32, i32* @WMI_TLV_TAG_STRUCT_CHANNEL, align 4
  %93 = call i8* @__cpu_to_le16(i32 %92)
  %94 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %95 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = call i8* @__cpu_to_le16(i32 4)
  %97 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %98 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.wmi_tlv*, %struct.wmi_tlv** %9, align 8
  %100 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = bitcast i8* %102 to %struct.wmi_channel*
  store %struct.wmi_channel* %103, %struct.wmi_channel** %7, align 8
  %104 = load %struct.wmi_channel*, %struct.wmi_channel** %7, align 8
  %105 = load %struct.wmi_channel_arg*, %struct.wmi_channel_arg** %8, align 8
  %106 = call i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel* %104, %struct.wmi_channel_arg* %105)
  %107 = load i8*, i8** %15, align 8
  %108 = getelementptr i8, i8* %107, i64 24
  store i8* %108, i8** %15, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = getelementptr i8, i8* %109, i64 4
  store i8* %110, i8** %15, align 8
  br label %111

111:                                              ; preds = %83
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %77

114:                                              ; preds = %77
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr i8, i8* %115, i64 24
  store i8* %116, i8** %14, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = getelementptr i8, i8* %118, i64 %117
  store i8* %119, i8** %14, align 8
  %120 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %121 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %122 = call i32 @ath10k_dbg(%struct.ath10k* %120, i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %123, %struct.sk_buff** %3, align 8
  br label %124

124:                                              ; preds = %114, %29
  %125 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %125
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_wmi_put_wmi_channel(%struct.wmi_channel*, %struct.wmi_channel_arg*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
