; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_wow_add_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_op_gen_wow_add_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv_wow_add_pattern_cmd = type { i8*, i8*, i8* }
%struct.wmi_tlv_wow_bitmap_pattern = type { i8*, i8*, i8*, i8*, i32, i32 }
%struct.wmi_tlv = type { i8*, i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_WOW_ADD_PATTERN_CMD = common dso_local global i32 0, align 4
@WOW_BITMAP_PATTERN = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_STRUCT = common dso_local global i32 0, align 4
@WMI_TLV_TAG_STRUCT_WOW_BITMAP_PATTERN_T = common dso_local global i32 0, align 4
@WMI_TLV_TAG_ARRAY_UINT32 = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"wmi tlv wow add pattern vdev_id %d pattern_id %d, pattern_offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32, i32*, i32*, i32, i32)* @ath10k_wmi_tlv_op_gen_wow_add_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_tlv_op_gen_wow_add_pattern(%struct.ath10k* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wmi_tlv_wow_add_pattern_cmd*, align 8
  %17 = alloca %struct.wmi_tlv_wow_bitmap_pattern*, align 8
  %18 = alloca %struct.wmi_tlv*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store %struct.ath10k* %0, %struct.ath10k** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 260, i64* %21, align 8
  %22 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %23 = load i64, i64* %21, align 8
  %24 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %22, i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %19, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.sk_buff* @ERR_PTR(i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  br label %183

31:                                               ; preds = %7
  %32 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %20, align 8
  %36 = load i8*, i8** %20, align 8
  %37 = bitcast i8* %36 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %37, %struct.wmi_tlv** %18, align 8
  %38 = load i32, i32* @WMI_TLV_TAG_STRUCT_WOW_ADD_PATTERN_CMD, align 4
  %39 = call i8* @__cpu_to_le16(i32 %38)
  %40 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %41 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = call i8* @__cpu_to_le16(i32 24)
  %43 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %44 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %46 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = bitcast i8* %48 to %struct.wmi_tlv_wow_add_pattern_cmd*
  store %struct.wmi_tlv_wow_add_pattern_cmd* %49, %struct.wmi_tlv_wow_add_pattern_cmd** %16, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @__cpu_to_le32(i32 %50)
  %52 = load %struct.wmi_tlv_wow_add_pattern_cmd*, %struct.wmi_tlv_wow_add_pattern_cmd** %16, align 8
  %53 = getelementptr inbounds %struct.wmi_tlv_wow_add_pattern_cmd, %struct.wmi_tlv_wow_add_pattern_cmd* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i8* @__cpu_to_le32(i32 %54)
  %56 = load %struct.wmi_tlv_wow_add_pattern_cmd*, %struct.wmi_tlv_wow_add_pattern_cmd** %16, align 8
  %57 = getelementptr inbounds %struct.wmi_tlv_wow_add_pattern_cmd, %struct.wmi_tlv_wow_add_pattern_cmd* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @WOW_BITMAP_PATTERN, align 4
  %59 = call i8* @__cpu_to_le32(i32 %58)
  %60 = load %struct.wmi_tlv_wow_add_pattern_cmd*, %struct.wmi_tlv_wow_add_pattern_cmd** %16, align 8
  %61 = getelementptr inbounds %struct.wmi_tlv_wow_add_pattern_cmd, %struct.wmi_tlv_wow_add_pattern_cmd* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = getelementptr i8, i8* %62, i64 24
  store i8* %63, i8** %20, align 8
  %64 = load i8*, i8** %20, align 8
  %65 = getelementptr i8, i8* %64, i64 24
  store i8* %65, i8** %20, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = bitcast i8* %66 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %67, %struct.wmi_tlv** %18, align 8
  %68 = load i32, i32* @WMI_TLV_TAG_ARRAY_STRUCT, align 4
  %69 = call i8* @__cpu_to_le16(i32 %68)
  %70 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %71 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = call i8* @__cpu_to_le16(i32 64)
  %73 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %74 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = getelementptr i8, i8* %75, i64 24
  store i8* %76, i8** %20, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = bitcast i8* %77 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %78, %struct.wmi_tlv** %18, align 8
  %79 = load i32, i32* @WMI_TLV_TAG_STRUCT_WOW_BITMAP_PATTERN_T, align 4
  %80 = call i8* @__cpu_to_le16(i32 %79)
  %81 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %82 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = call i8* @__cpu_to_le16(i32 40)
  %84 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %85 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %87 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = bitcast i8* %89 to %struct.wmi_tlv_wow_bitmap_pattern*
  store %struct.wmi_tlv_wow_bitmap_pattern* %90, %struct.wmi_tlv_wow_bitmap_pattern** %17, align 8
  %91 = load %struct.wmi_tlv_wow_bitmap_pattern*, %struct.wmi_tlv_wow_bitmap_pattern** %17, align 8
  %92 = getelementptr inbounds %struct.wmi_tlv_wow_bitmap_pattern, %struct.wmi_tlv_wow_bitmap_pattern* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @memcpy(i32 %93, i32* %94, i32 %95)
  %97 = load %struct.wmi_tlv_wow_bitmap_pattern*, %struct.wmi_tlv_wow_bitmap_pattern** %17, align 8
  %98 = getelementptr inbounds %struct.wmi_tlv_wow_bitmap_pattern, %struct.wmi_tlv_wow_bitmap_pattern* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @memcpy(i32 %99, i32* %100, i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = call i8* @__cpu_to_le32(i32 %103)
  %105 = load %struct.wmi_tlv_wow_bitmap_pattern*, %struct.wmi_tlv_wow_bitmap_pattern** %17, align 8
  %106 = getelementptr inbounds %struct.wmi_tlv_wow_bitmap_pattern, %struct.wmi_tlv_wow_bitmap_pattern* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i8* @__cpu_to_le32(i32 %107)
  %109 = load %struct.wmi_tlv_wow_bitmap_pattern*, %struct.wmi_tlv_wow_bitmap_pattern** %17, align 8
  %110 = getelementptr inbounds %struct.wmi_tlv_wow_bitmap_pattern, %struct.wmi_tlv_wow_bitmap_pattern* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i8* @__cpu_to_le32(i32 %111)
  %113 = load %struct.wmi_tlv_wow_bitmap_pattern*, %struct.wmi_tlv_wow_bitmap_pattern** %17, align 8
  %114 = getelementptr inbounds %struct.wmi_tlv_wow_bitmap_pattern, %struct.wmi_tlv_wow_bitmap_pattern* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i8* @__cpu_to_le32(i32 %115)
  %117 = load %struct.wmi_tlv_wow_bitmap_pattern*, %struct.wmi_tlv_wow_bitmap_pattern** %17, align 8
  %118 = getelementptr inbounds %struct.wmi_tlv_wow_bitmap_pattern, %struct.wmi_tlv_wow_bitmap_pattern* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %20, align 8
  %120 = getelementptr i8, i8* %119, i64 24
  store i8* %120, i8** %20, align 8
  %121 = load i8*, i8** %20, align 8
  %122 = getelementptr i8, i8* %121, i64 40
  store i8* %122, i8** %20, align 8
  %123 = load i8*, i8** %20, align 8
  %124 = bitcast i8* %123 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %124, %struct.wmi_tlv** %18, align 8
  %125 = load i32, i32* @WMI_TLV_TAG_ARRAY_STRUCT, align 4
  %126 = call i8* @__cpu_to_le16(i32 %125)
  %127 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %128 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = call i8* @__cpu_to_le16(i32 0)
  %130 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %131 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** %20, align 8
  %133 = getelementptr i8, i8* %132, i64 24
  store i8* %133, i8** %20, align 8
  %134 = load i8*, i8** %20, align 8
  %135 = bitcast i8* %134 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %135, %struct.wmi_tlv** %18, align 8
  %136 = load i32, i32* @WMI_TLV_TAG_ARRAY_STRUCT, align 4
  %137 = call i8* @__cpu_to_le16(i32 %136)
  %138 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %139 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = call i8* @__cpu_to_le16(i32 0)
  %141 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %142 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load i8*, i8** %20, align 8
  %144 = getelementptr i8, i8* %143, i64 24
  store i8* %144, i8** %20, align 8
  %145 = load i8*, i8** %20, align 8
  %146 = bitcast i8* %145 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %146, %struct.wmi_tlv** %18, align 8
  %147 = load i32, i32* @WMI_TLV_TAG_ARRAY_STRUCT, align 4
  %148 = call i8* @__cpu_to_le16(i32 %147)
  %149 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %150 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = call i8* @__cpu_to_le16(i32 0)
  %152 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %153 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** %20, align 8
  %155 = getelementptr i8, i8* %154, i64 24
  store i8* %155, i8** %20, align 8
  %156 = load i8*, i8** %20, align 8
  %157 = bitcast i8* %156 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %157, %struct.wmi_tlv** %18, align 8
  %158 = load i32, i32* @WMI_TLV_TAG_ARRAY_UINT32, align 4
  %159 = call i8* @__cpu_to_le16(i32 %158)
  %160 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %161 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = call i8* @__cpu_to_le16(i32 0)
  %163 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %164 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** %20, align 8
  %166 = getelementptr i8, i8* %165, i64 24
  store i8* %166, i8** %20, align 8
  %167 = load i8*, i8** %20, align 8
  %168 = bitcast i8* %167 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %168, %struct.wmi_tlv** %18, align 8
  %169 = load i32, i32* @WMI_TLV_TAG_ARRAY_UINT32, align 4
  %170 = call i8* @__cpu_to_le16(i32 %169)
  %171 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %172 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = call i8* @__cpu_to_le16(i32 4)
  %174 = load %struct.wmi_tlv*, %struct.wmi_tlv** %18, align 8
  %175 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %177 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @ath10k_dbg(%struct.ath10k* %176, i32 %177, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %179, i32 %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %182, %struct.sk_buff** %8, align 8
  br label %183

183:                                              ; preds = %31, %27
  %184 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %184
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le16(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
