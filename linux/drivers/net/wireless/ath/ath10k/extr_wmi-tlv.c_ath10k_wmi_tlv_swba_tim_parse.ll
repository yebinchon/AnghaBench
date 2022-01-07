; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_swba_tim_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_swba_tim_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_tlv_swba_parse = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wmi_tim_info_arg* }
%struct.wmi_tim_info_arg = type { i32, i32, i32, i32, i32 }
%struct.wmi_tim_info = type { i32, i32, i32, i32, i32 }

@WMI_TLV_TAG_STRUCT_TIM_INFO = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"refusing to parse invalid swba structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i64, i64, i8*, i8*)* @ath10k_wmi_tlv_swba_tim_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_swba_tim_parse(%struct.ath10k* %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wmi_tlv_swba_parse*, align 8
  %13 = alloca %struct.wmi_tim_info_arg*, align 8
  %14 = alloca %struct.wmi_tim_info*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.wmi_tlv_swba_parse*
  store %struct.wmi_tlv_swba_parse* %16, %struct.wmi_tlv_swba_parse** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.wmi_tim_info*
  store %struct.wmi_tim_info* %18, %struct.wmi_tim_info** %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @WMI_TLV_TAG_STRUCT_TIM_INFO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EPROTO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %90

25:                                               ; preds = %5
  %26 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %27 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %30 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %32, align 8
  %34 = call i64 @ARRAY_SIZE(%struct.wmi_tim_info_arg* %33)
  %35 = icmp uge i64 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %90

39:                                               ; preds = %25
  %40 = load %struct.wmi_tim_info*, %struct.wmi_tim_info** %14, align 8
  %41 = getelementptr inbounds %struct.wmi_tim_info, %struct.wmi_tim_info* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__le32_to_cpu(i32 %42)
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %48 = call i32 @ath10k_warn(%struct.ath10k* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EPROTO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %90

51:                                               ; preds = %39
  %52 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %53 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %55, align 8
  %57 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %58 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %56, i64 %59
  store %struct.wmi_tim_info_arg* %60, %struct.wmi_tim_info_arg** %13, align 8
  %61 = load %struct.wmi_tim_info*, %struct.wmi_tim_info** %14, align 8
  %62 = getelementptr inbounds %struct.wmi_tim_info, %struct.wmi_tim_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %13, align 8
  %65 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load %struct.wmi_tim_info*, %struct.wmi_tim_info** %14, align 8
  %67 = getelementptr inbounds %struct.wmi_tim_info, %struct.wmi_tim_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %13, align 8
  %70 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.wmi_tim_info*, %struct.wmi_tim_info** %14, align 8
  %72 = getelementptr inbounds %struct.wmi_tim_info, %struct.wmi_tim_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %13, align 8
  %75 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.wmi_tim_info*, %struct.wmi_tim_info** %14, align 8
  %77 = getelementptr inbounds %struct.wmi_tim_info, %struct.wmi_tim_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %13, align 8
  %80 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.wmi_tim_info*, %struct.wmi_tim_info** %14, align 8
  %82 = getelementptr inbounds %struct.wmi_tim_info, %struct.wmi_tim_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wmi_tim_info_arg*, %struct.wmi_tim_info_arg** %13, align 8
  %85 = getelementptr inbounds %struct.wmi_tim_info_arg, %struct.wmi_tim_info_arg* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.wmi_tlv_swba_parse*, %struct.wmi_tlv_swba_parse** %12, align 8
  %87 = getelementptr inbounds %struct.wmi_tlv_swba_parse, %struct.wmi_tlv_swba_parse* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %51, %46, %36, %22
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @ARRAY_SIZE(%struct.wmi_tim_info_arg*) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
