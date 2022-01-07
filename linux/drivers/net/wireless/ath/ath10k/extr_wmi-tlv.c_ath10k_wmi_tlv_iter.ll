; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-tlv.c_ath10k_wmi_tlv_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_tlv = type { i32, i32 }

@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"wmi tlv parse failure at byte %zd (%zu bytes left, %zu expected)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"wmi tlv parse failure of tag %hhu at byte %zd (%zu bytes left, %hhu expected)\0A\00", align 1
@wmi_tlv_policies = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [88 x i8] c"wmi tlv parse failure of tag %hhu at byte %zd (%hhu bytes is less than min length %zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i8*, i64, i32 (%struct.ath10k*, i64, i64, i8*, i8*)*, i8*)* @ath10k_wmi_tlv_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_tlv_iter(%struct.ath10k* %0, i8* %1, i64 %2, i32 (%struct.ath10k*, i64, i64, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (%struct.ath10k*, i64, i64, i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wmi_tlv*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 (%struct.ath10k*, i64, i64, i8*, i8*)* %3, i32 (%struct.ath10k*, i64, i64, i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  br label %18

18:                                               ; preds = %121, %5
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %26 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = load i64, i64* %9, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (%struct.ath10k*, i32, i8*, i64, i32, i64, ...) @ath10k_dbg(%struct.ath10k* %25, i32 %26, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %33, i64 8)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %129

37:                                               ; preds = %21
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to %struct.wmi_tlv*
  store %struct.wmi_tlv* %39, %struct.wmi_tlv** %13, align 8
  %40 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %41 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @__le16_to_cpu(i32 %42)
  store i64 %43, i64* %14, align 8
  %44 = load %struct.wmi_tlv*, %struct.wmi_tlv** %13, align 8
  %45 = getelementptr inbounds %struct.wmi_tlv, %struct.wmi_tlv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @__le16_to_cpu(i32 %46)
  store i64 %47, i64* %15, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr i8, i8* %48, i64 8
  store i8* %49, i8** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %50, 8
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %37
  %56 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %57 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %58 = load i64, i64* %14, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %15, align 8
  %67 = call i32 (%struct.ath10k*, i32, i8*, i64, i32, i64, ...) @ath10k_dbg(%struct.ath10k* %56, i32 %57, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %58, i32 %64, i64 %65, i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %129

70:                                               ; preds = %37
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wmi_tlv_policies, align 8
  %73 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %72)
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wmi_tlv_policies, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %75
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wmi_tlv_policies, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %15, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %82
  %91 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %92 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %93 = load i64, i64* %14, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wmi_tlv_policies, align 8
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 (%struct.ath10k*, i32, i8*, i64, i32, i64, ...) @ath10k_dbg(%struct.ath10k* %91, i32 %92, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i64 %93, i32 %99, i64 %100, i64 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %129

109:                                              ; preds = %82, %75, %70
  %110 = load i32 (%struct.ath10k*, i64, i64, i8*, i8*)*, i32 (%struct.ath10k*, i64, i64, i8*, i8*)** %10, align 8
  %111 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 %110(%struct.ath10k* %111, i64 %112, i64 %113, i8* %114, i8* %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %6, align 4
  br label %129

121:                                              ; preds = %109
  %122 = load i64, i64* %15, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr i8, i8* %123, i64 %122
  store i8* %124, i8** %8, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %9, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %9, align 8
  br label %18

128:                                              ; preds = %18
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %119, %90, %55, %24
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i32, i64, ...) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
