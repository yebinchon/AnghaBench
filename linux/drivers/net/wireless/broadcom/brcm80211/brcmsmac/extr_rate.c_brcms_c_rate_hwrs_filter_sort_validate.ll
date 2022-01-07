; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_rate.c_brcms_c_rate_hwrs_filter_sort_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_rate.c_brcms_c_rate_hwrs_filter_sort_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_rateset = type { i64, i32*, i32* }

@BRCM_MAXRATE = common dso_local global i32 0, align 4
@BRCMS_RATE_MASK = common dso_local global i32 0, align 4
@rate_info = common dso_local global i64* null, align 8
@MCSSET_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_rate_hwrs_filter_sort_validate(%struct.brcms_c_rateset* %0, %struct.brcms_c_rateset* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_c_rateset*, align 8
  %7 = alloca %struct.brcms_c_rateset*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.brcms_c_rateset* %0, %struct.brcms_c_rateset** %6, align 8
  store %struct.brcms_c_rateset* %1, %struct.brcms_c_rateset** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @BRCM_MAXRATE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = mul nuw i64 4, %18
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %20, i32 0, i32 %22)
  %24 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %25 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %27

27:                                               ; preds = %61, %4
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %33 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BRCMS_RATE_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @BRCM_MAXRATE, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %31
  %44 = load i64*, i64** @rate_info, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %31
  br label %61

51:                                               ; preds = %43
  %52 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %53 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %20, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %50
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %14, align 8
  br label %27

64:                                               ; preds = %27
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %65

65:                                               ; preds = %97, %64
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %7, align 8
  %68 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %7, align 8
  %73 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BRCMS_RATE_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %20, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %71
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %20, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %91 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %13, align 8
  %95 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %71
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %14, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %14, align 8
  br label %65

100:                                              ; preds = %65
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %103 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  store i64 0, i64* %14, align 8
  br label %104

104:                                              ; preds = %127, %100
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @MCSSET_LEN, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %104
  %109 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %110 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %7, align 8
  %116 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %114, %120
  %122 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %123 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %14, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %108
  %128 = load i64, i64* %14, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %14, align 8
  br label %104

130:                                              ; preds = %104
  %131 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @brcms_c_rateset_valid(%struct.brcms_c_rateset* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %137

136:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @brcms_c_rateset_valid(%struct.brcms_c_rateset*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
