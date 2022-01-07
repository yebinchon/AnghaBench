; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_rateset = type { i64, i64*, i32*, i32 }

@BRCMS_RATE_FLAG = common dso_local global i64 0, align 8
@BRCMS_RATES_CCK = common dso_local global i64 0, align 8
@BRCMS_RATE_MASK = common dso_local global i64 0, align 8
@BRCMS_RATES_OFDM = common dso_local global i64 0, align 8
@MCSSET_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_rateset_filter(%struct.brcms_c_rateset* %0, %struct.brcms_c_rateset* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.brcms_c_rateset*, align 8
  %8 = alloca %struct.brcms_c_rateset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.brcms_c_rateset* %0, %struct.brcms_c_rateset** %7, align 8
  store %struct.brcms_c_rateset* %1, %struct.brcms_c_rateset** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %69, %6
  %17 = load i64, i64* %13, align 8
  %18 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %7, align 8
  %19 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %16
  %23 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %7, align 8
  %24 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @BRCMS_RATE_FLAG, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %69

37:                                               ; preds = %31, %22
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @BRCMS_RATES_CCK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* @BRCMS_RATE_MASK, align 8
  %44 = and i64 %42, %43
  %45 = call i64 @is_ofdm_rate(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %69

48:                                               ; preds = %41, %37
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @BRCMS_RATES_OFDM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @BRCMS_RATE_MASK, align 8
  %55 = and i64 %53, %54
  %56 = call i64 @is_cck_rate(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %69

59:                                               ; preds = %52, %48
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %11, align 8
  %62 = and i64 %60, %61
  %63 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %8, align 8
  %64 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %15, align 8
  %68 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %62, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %58, %47, %36
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %16

72:                                               ; preds = %16
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %8, align 8
  %75 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %7, align 8
  %77 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %8, align 8
  %80 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %72
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @BRCMS_RATES_CCK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %8, align 8
  %89 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %7, align 8
  %93 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* @MCSSET_LEN, align 4
  %97 = call i32 @memcpy(i32* %91, i32* %95, i32 %96)
  br label %101

98:                                               ; preds = %83, %72
  %99 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %8, align 8
  %100 = call i32 @brcms_c_rateset_mcs_clear(%struct.brcms_c_rateset* %99)
  br label %101

101:                                              ; preds = %98, %87
  ret void
}

declare dso_local i64 @is_ofdm_rate(i64) #1

declare dso_local i64 @is_cck_rate(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @brcms_c_rateset_mcs_clear(%struct.brcms_c_rateset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
