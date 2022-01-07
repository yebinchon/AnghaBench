; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_computetxtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_computetxtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }

@CCK_PREAMBLE_BITS = common dso_local global i32 0, align 4
@CCK_PLCP_BITS = common dso_local global i32 0, align 4
@CCK_SIFS_TIME = common dso_local global i32 0, align 4
@OFDM_SYMBOL_TIME_QUARTER = common dso_local global i32 0, align 4
@OFDM_PLCP_BITS = common dso_local global i32 0, align 4
@OFDM_SIFS_TIME_QUARTER = common dso_local global i32 0, align 4
@OFDM_PREAMBLE_TIME_QUARTER = common dso_local global i32 0, align 4
@OFDM_SYMBOL_TIME_HALF = common dso_local global i32 0, align 4
@OFDM_SIFS_TIME_HALF = common dso_local global i32 0, align 4
@OFDM_PREAMBLE_TIME_HALF = common dso_local global i32 0, align 4
@OFDM_SYMBOL_TIME = common dso_local global i32 0, align 4
@OFDM_SIFS_TIME = common dso_local global i32 0, align 4
@OFDM_PREAMBLE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown phy %u (rate ix %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_computetxtime(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %135

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %127 [
    i32 129, label %24
    i32 128, label %44
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @CCK_PREAMBLE_BITS, align 4
  %26 = load i32, i32* @CCK_PLCP_BITS, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %17, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 3
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* @CCK_SIFS_TIME, align 4
  %37 = load i32, i32* %17, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %15, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = load i32, i32* %10, align 4
  %42 = sdiv i32 %40, %41
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %18, align 4
  br label %133

44:                                               ; preds = %22
  %45 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %46 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %44
  %50 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IS_CHAN_QUARTER_RATE(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 2
  %58 = load i32, i32* @OFDM_SYMBOL_TIME_QUARTER, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 1000
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* @OFDM_PLCP_BITS, align 4
  %62 = load i32, i32* %11, align 4
  %63 = shl i32 %62, 3
  %64 = add nsw i32 %61, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @DIV_ROUND_UP(i32 %65, i32 %66)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* @OFDM_SIFS_TIME_QUARTER, align 4
  %69 = load i32, i32* @OFDM_PREAMBLE_TIME_QUARTER, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @OFDM_SYMBOL_TIME_QUARTER, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  store i32 %74, i32* %18, align 4
  br label %126

75:                                               ; preds = %49, %44
  %76 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %77 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %75
  %81 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %82 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @IS_CHAN_HALF_RATE(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, 1
  %89 = load i32, i32* @OFDM_SYMBOL_TIME_HALF, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sdiv i32 %90, 1000
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* @OFDM_PLCP_BITS, align 4
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 %93, 3
  %95 = add nsw i32 %92, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @DIV_ROUND_UP(i32 %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* @OFDM_SIFS_TIME_HALF, align 4
  %100 = load i32, i32* @OFDM_PREAMBLE_TIME_HALF, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @OFDM_SYMBOL_TIME_HALF, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %18, align 4
  br label %125

106:                                              ; preds = %80, %75
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @OFDM_SYMBOL_TIME, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sdiv i32 %109, 1000
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* @OFDM_PLCP_BITS, align 4
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 %112, 3
  %114 = add nsw i32 %111, %113
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @DIV_ROUND_UP(i32 %115, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* @OFDM_SIFS_TIME, align 4
  %119 = load i32, i32* @OFDM_PREAMBLE_TIME, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @OFDM_SYMBOL_TIME, align 4
  %123 = mul nsw i32 %121, %122
  %124 = add nsw i32 %120, %123
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %106, %86
  br label %126

126:                                              ; preds = %125, %55
  br label %133

127:                                              ; preds = %22
  %128 = load %struct.ath_hw*, %struct.ath_hw** %8, align 8
  %129 = call i32 @ath9k_hw_common(%struct.ath_hw* %128)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @ath_err(i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %131)
  store i32 0, i32* %18, align 4
  br label %133

133:                                              ; preds = %127, %126, %33
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %21
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @IS_CHAN_QUARTER_RATE(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @IS_CHAN_HALF_RATE(i32) #1

declare dso_local i32 @ath_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
