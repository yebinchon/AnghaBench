; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_bcn_tmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_bcn_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i64, i8* }
%struct.wmi_tlv_bcn_tmpl_cmd = type { i8*, i8*, i8* }
%struct.wmi_tlv_bcn_prb_info = type { i64, i8*, i8* }
%struct.wmi_tlv = type { i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_BCN_TMPL_CMD = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_BCN_PRB_INFO = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wmi tlv bcn tmpl vdev_id %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i64, i64, %struct.sk_buff*, i64, i64, i8*, i64)* @ath10k_wmi_tlv_op_gen_bcn_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_bcn_tmpl(%struct.ath10k* %0, i64 %1, i64 %2, %struct.sk_buff* %3, i64 %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ath10k*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.wmi_tlv_bcn_tmpl_cmd*, align 8
  %19 = alloca %struct.wmi_tlv_bcn_prb_info*, align 8
  %20 = alloca %struct.wmi_tlv*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %24 = load i64, i64* %17, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %8
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %8
  %31 = phi i1 [ false, %8 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.sk_buff* @ERR_PTR(i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %9, align 8
  br label %160

39:                                               ; preds = %30
  %40 = load i64, i64* %17, align 8
  %41 = add i64 96, %40
  %42 = add i64 %41, 24
  %43 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @roundup(i64 %45, i32 4)
  %47 = sext i32 %46 to i64
  %48 = add i64 %42, %47
  store i64 %48, i64* %23, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %50 = load i64, i64* %23, align 8
  %51 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %49, i64 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %21, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.sk_buff* @ERR_PTR(i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %9, align 8
  br label %160

58:                                               ; preds = %39
  %59 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %22, align 8
  %62 = load i8*, i8** %22, align 8
  %63 = bitcast i8* %62 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %63, %struct.wmi_tlv** %20, align 8
  %64 = load i32, i32* @WMI_TLV_TAG_STRUCT_BCN_TMPL_CMD, align 4
  %65 = call i8* @__cpu_to_le16(i32 %64)
  %66 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %67 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = call i8* @__cpu_to_le16(i32 24)
  %69 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %70 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %72 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast i8* %74 to %struct.wmi_tlv_bcn_tmpl_cmd*
  store %struct.wmi_tlv_bcn_tmpl_cmd* %75, %struct.wmi_tlv_bcn_tmpl_cmd** %18, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i8* @__cpu_to_le32(i64 %76)
  %78 = load %struct.wmi_tlv_bcn_tmpl_cmd*, %struct.wmi_tlv_bcn_tmpl_cmd** %18, align 8
  %79 = getelementptr inbounds %struct.wmi_tlv_bcn_tmpl_cmd, %struct.wmi_tlv_bcn_tmpl_cmd* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i8* @__cpu_to_le32(i64 %80)
  %82 = load %struct.wmi_tlv_bcn_tmpl_cmd*, %struct.wmi_tlv_bcn_tmpl_cmd** %18, align 8
  %83 = getelementptr inbounds %struct.wmi_tlv_bcn_tmpl_cmd, %struct.wmi_tlv_bcn_tmpl_cmd* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @__cpu_to_le32(i64 %86)
  %88 = load %struct.wmi_tlv_bcn_tmpl_cmd*, %struct.wmi_tlv_bcn_tmpl_cmd** %18, align 8
  %89 = getelementptr inbounds %struct.wmi_tlv_bcn_tmpl_cmd, %struct.wmi_tlv_bcn_tmpl_cmd* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %22, align 8
  %91 = getelementptr i8, i8* %90, i64 24
  store i8* %91, i8** %22, align 8
  %92 = load i8*, i8** %22, align 8
  %93 = getelementptr i8, i8* %92, i64 24
  store i8* %93, i8** %22, align 8
  %94 = load i8*, i8** %22, align 8
  %95 = bitcast i8* %94 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %95, %struct.wmi_tlv** %20, align 8
  %96 = load i32, i32* @WMI_TLV_TAG_STRUCT_BCN_PRB_INFO, align 4
  %97 = call i8* @__cpu_to_le16(i32 %96)
  %98 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %99 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i64, i64* %17, align 8
  %101 = add i64 24, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @__cpu_to_le16(i32 %102)
  %104 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %105 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %107 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = bitcast i8* %109 to %struct.wmi_tlv_bcn_prb_info*
  store %struct.wmi_tlv_bcn_prb_info* %110, %struct.wmi_tlv_bcn_prb_info** %19, align 8
  %111 = load i64, i64* %14, align 8
  %112 = call i8* @__cpu_to_le32(i64 %111)
  %113 = load %struct.wmi_tlv_bcn_prb_info*, %struct.wmi_tlv_bcn_prb_info** %19, align 8
  %114 = getelementptr inbounds %struct.wmi_tlv_bcn_prb_info, %struct.wmi_tlv_bcn_prb_info* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load i64, i64* %15, align 8
  %116 = call i8* @__cpu_to_le32(i64 %115)
  %117 = load %struct.wmi_tlv_bcn_prb_info*, %struct.wmi_tlv_bcn_prb_info** %19, align 8
  %118 = getelementptr inbounds %struct.wmi_tlv_bcn_prb_info, %struct.wmi_tlv_bcn_prb_info* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.wmi_tlv_bcn_prb_info*, %struct.wmi_tlv_bcn_prb_info** %19, align 8
  %120 = getelementptr inbounds %struct.wmi_tlv_bcn_prb_info, %struct.wmi_tlv_bcn_prb_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = load i64, i64* %17, align 8
  %124 = call i32 @memcpy(i64 %121, i8* %122, i64 %123)
  %125 = load i8*, i8** %22, align 8
  %126 = getelementptr i8, i8* %125, i64 24
  store i8* %126, i8** %22, align 8
  %127 = load i8*, i8** %22, align 8
  %128 = getelementptr i8, i8* %127, i64 24
  store i8* %128, i8** %22, align 8
  %129 = load i64, i64* %17, align 8
  %130 = load i8*, i8** %22, align 8
  %131 = getelementptr i8, i8* %130, i64 %129
  store i8* %131, i8** %22, align 8
  %132 = load i8*, i8** %22, align 8
  %133 = bitcast i8* %132 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %133, %struct.wmi_tlv** %20, align 8
  %134 = load i32, i32* @WMI_TLV_TAG_ARRAY_BYTE, align 4
  %135 = call i8* @__cpu_to_le16(i32 %134)
  %136 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %137 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @roundup(i64 %140, i32 4)
  %142 = call i8* @__cpu_to_le16(i32 %141)
  %143 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %144 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.wmi_tlv*, %struct.wmi_tlv** %20, align 8
  %146 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @memcpy(i64 %147, i8* %150, i64 %153)
  %155 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %156 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %157 = load i64, i64* %11, align 8
  %158 = call i32 @ath10k_dbg(%struct.ath10k* %155, i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %159, %struct.sk_buff** %9, align 8
  br label %160

160:                                              ; preds = %58, %54, %35
  %161 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %161
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
