; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_prb_tmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_prb_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.wmi_tlv_prb_tmpl_cmd = type { i8*, i8* }
%struct.wmi_tlv_bcn_prb_info = type { i64, i64 }
%struct.wmi_tlv = type { i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_PRB_TMPL_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_BCN_PRB_INFO = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wmi tlv prb tmpl vdev_id %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, %struct.sk_buff*)* @ath10k_wmi_tlv_op_gen_prb_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_prb_tmpl(%struct.ath10k* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wmi_tlv_prb_tmpl_cmd*, align 8
  %9 = alloca %struct.wmi_tlv_bcn_prb_info*, align 8
  %10 = alloca %struct.wmi_tlv*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @roundup(i32 %16, i32 4)
  %18 = sext i32 %17 to i64
  %19 = add i64 104, %18
  store i64 %19, i64* %13, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %21 = load i64, i64* %13, align 8
  %22 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %20, i64 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.sk_buff* @ERR_PTR(i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  br label %112

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = bitcast i8* %34 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %35, %struct.wmi_tlv** %10, align 8
  %36 = load i32, i32* @WMI_TLV_TAG_STRUCT_PRB_TMPL_CMD, align 4
  %37 = call i8* @__cpu_to_le16(i32 %36)
  %38 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %39 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = call i8* @__cpu_to_le16(i32 16)
  %41 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %42 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %44 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to %struct.wmi_tlv_prb_tmpl_cmd*
  store %struct.wmi_tlv_prb_tmpl_cmd* %47, %struct.wmi_tlv_prb_tmpl_cmd** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @__cpu_to_le32(i32 %48)
  %50 = load %struct.wmi_tlv_prb_tmpl_cmd*, %struct.wmi_tlv_prb_tmpl_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.wmi_tlv_prb_tmpl_cmd, %struct.wmi_tlv_prb_tmpl_cmd* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @__cpu_to_le32(i32 %54)
  %56 = load %struct.wmi_tlv_prb_tmpl_cmd*, %struct.wmi_tlv_prb_tmpl_cmd** %8, align 8
  %57 = getelementptr inbounds %struct.wmi_tlv_prb_tmpl_cmd, %struct.wmi_tlv_prb_tmpl_cmd* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr i8, i8* %58, i64 24
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr i8, i8* %60, i64 16
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = bitcast i8* %62 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %63, %struct.wmi_tlv** %10, align 8
  %64 = load i32, i32* @WMI_TLV_TAG_STRUCT_BCN_PRB_INFO, align 4
  %65 = call i8* @__cpu_to_le16(i32 %64)
  %66 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %67 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = call i8* @__cpu_to_le16(i32 16)
  %69 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %70 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %72 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.wmi_tlv_bcn_prb_info*
  store %struct.wmi_tlv_bcn_prb_info* %75, %struct.wmi_tlv_bcn_prb_info** %9, align 8
  %76 = load %struct.wmi_tlv_bcn_prb_info*, %struct.wmi_tlv_bcn_prb_info** %9, align 8
  %77 = getelementptr inbounds %struct.wmi_tlv_bcn_prb_info, %struct.wmi_tlv_bcn_prb_info* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.wmi_tlv_bcn_prb_info*, %struct.wmi_tlv_bcn_prb_info** %9, align 8
  %79 = getelementptr inbounds %struct.wmi_tlv_bcn_prb_info, %struct.wmi_tlv_bcn_prb_info* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr i8, i8* %80, i64 24
  store i8* %81, i8** %12, align 8
  %82 = load i8*, i8** %12, align 8
  %83 = getelementptr i8, i8* %82, i64 16
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = bitcast i8* %84 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %85, %struct.wmi_tlv** %10, align 8
  %86 = load i32, i32* @WMI_TLV_TAG_ARRAY_BYTE, align 4
  %87 = call i8* @__cpu_to_le16(i32 %86)
  %88 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %89 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @roundup(i32 %92, i32 4)
  %94 = call i8* @__cpu_to_le16(i32 %93)
  %95 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %96 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.wmi_tlv*, %struct.wmi_tlv** %10, align 8
  %98 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy(i64 %99, i64 %102, i32 %105)
  %107 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %108 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @ath10k_dbg(%struct.ath10k* %107, i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %111, %struct.sk_buff** %4, align 8
  br label %112

112:                                              ; preds = %29, %25
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %113
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
