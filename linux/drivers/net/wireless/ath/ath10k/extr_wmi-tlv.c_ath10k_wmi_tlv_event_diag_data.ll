; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_diag_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_event_diag_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.wmi_tlv_diag_data_ev = type { i32 }
%struct.wmi_tlv_diag_item = type { i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to parse tlv: %d\0A\00", align 1
@WMI_TLV_TAG_STRUCT_DIAG_DATA_CONTAINER_EVENT = common dso_local global i64 0, align 8
@WMI_TLV_TAG_ARRAY_BYTE = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to parse diag data: can't fit item header\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"failed to parse diag data: item is too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"failed to parse diag data event: num_items %d len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.sk_buff*)* @ath10k_wmi_tlv_event_diag_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_event_diag_data(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.wmi_tlv_diag_data_ev*, align 8
  %8 = alloca %struct.wmi_tlv_diag_item*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k* %13, i32 %16, i32 %19, i32 %20)
  store i8** %21, i8*** %6, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = call i64 @IS_ERR(i8** %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i8**, i8*** %6, align 8
  %27 = call i32 @PTR_ERR(i8** %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %3, align 4
  br label %146

32:                                               ; preds = %2
  %33 = load i8**, i8*** %6, align 8
  %34 = load i64, i64* @WMI_TLV_TAG_STRUCT_DIAG_DATA_CONTAINER_EVENT, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.wmi_tlv_diag_data_ev*
  store %struct.wmi_tlv_diag_data_ev* %37, %struct.wmi_tlv_diag_data_ev** %7, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i64, i64* @WMI_TLV_TAG_ARRAY_BYTE, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load %struct.wmi_tlv_diag_data_ev*, %struct.wmi_tlv_diag_data_ev** %7, align 8
  %43 = icmp ne %struct.wmi_tlv_diag_data_ev* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44, %32
  %48 = load i8**, i8*** %6, align 8
  %49 = call i32 @kfree(i8** %48)
  %50 = load i32, i32* @EPROTO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %146

52:                                               ; preds = %44
  %53 = load %struct.wmi_tlv_diag_data_ev*, %struct.wmi_tlv_diag_data_ev** %7, align 8
  %54 = getelementptr inbounds %struct.wmi_tlv_diag_data_ev, %struct.wmi_tlv_diag_data_ev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @__le32_to_cpu(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @ath10k_wmi_tlv_len(i8* %57)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %89, %52
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %11, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %132

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %132

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %69, 20
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %73 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %132

74:                                               ; preds = %67
  %75 = load i8*, i8** %9, align 8
  %76 = bitcast i8* %75 to %struct.wmi_tlv_diag_item*
  store %struct.wmi_tlv_diag_item* %76, %struct.wmi_tlv_diag_item** %8, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %80 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__le16_to_cpu(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = add i64 20, %83
  %85 = icmp ult i64 %78, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %88 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %132

89:                                               ; preds = %74
  %90 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %91 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %92 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %95 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @__le32_to_cpu(i32 %96)
  %98 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %99 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @__le32_to_cpu(i32 %100)
  %102 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %103 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @__le16_to_cpu(i32 %104)
  %106 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %107 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @trace_ath10k_wmi_diag_container(%struct.ath10k* %90, i32 %93, i32 %97, i32 %101, i32 %105, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %111, 20
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %115 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @__le16_to_cpu(i32 %116)
  %118 = call i64 @roundup(i32 %117, i32 4)
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr i8, i8* %123, i64 20
  store i8* %124, i8** %9, align 8
  %125 = load %struct.wmi_tlv_diag_item*, %struct.wmi_tlv_diag_item** %8, align 8
  %126 = getelementptr inbounds %struct.wmi_tlv_diag_item, %struct.wmi_tlv_diag_item* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @__le16_to_cpu(i32 %127)
  %129 = call i64 @roundup(i32 %128, i32 4)
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr i8, i8* %130, i64 %129
  store i8* %131, i8** %9, align 8
  br label %59

132:                                              ; preds = %86, %71, %66, %59
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, -1
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135, %132
  %139 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %139, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i8**, i8*** %6, align 8
  %145 = call i32 @kfree(i8** %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %143, %47, %25
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i8** @ath10k_wmi_tlv_parse_alloc(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_wmi_tlv_len(i8*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @trace_ath10k_wmi_diag_container(%struct.ath10k*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
