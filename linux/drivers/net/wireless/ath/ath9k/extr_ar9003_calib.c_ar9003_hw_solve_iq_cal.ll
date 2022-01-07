; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_solve_iq_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_calib.c_ar9003_hw_solve_iq_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32 }

@CALIBRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Divide by 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i32, i32, i32, i32, i32, i32, i32, i32, i32*)* @ar9003_hw_solve_iq_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_solve_iq_cal(%struct.ath_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %16, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %23, align 4
  store i32 32768, i32* %29, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %12, align 8
  %38 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %37)
  store %struct.ath_common* %38, %struct.ath_common** %30, align 8
  %39 = load i32, i32* %22, align 4
  %40 = ashr i32 %39, 3
  %41 = load i32, i32* %22, align 4
  %42 = ashr i32 %41, 3
  %43 = mul nsw i32 %40, %42
  %44 = load i32, i32* %23, align 4
  %45 = ashr i32 %44, 3
  %46 = load i32, i32* %23, align 4
  %47 = ashr i32 %46, 3
  %48 = mul nsw i32 %45, %47
  %49 = add nsw i32 %43, %48
  %50 = ashr i32 %49, 9
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %24, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %10
  %54 = load %struct.ath_common*, %struct.ath_common** %30, align 8
  %55 = load i32, i32* @CALIBRATE, align 4
  %56 = call i32 @ath_dbg(%struct.ath_common* %54, i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %119

57:                                               ; preds = %10
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %19, align 4
  %61 = sub nsw i32 %59, %60
  %62 = mul nsw i32 %58, %61
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %20, align 4
  %66 = sub nsw i32 %64, %65
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %62, %67
  store i32 %68, i32* %25, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %17, align 4
  %71 = sub nsw i32 0, %70
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %71, %72
  %74 = mul nsw i32 %69, %73
  %75 = load i32, i32* %22, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %76, %77
  %79 = mul nsw i32 %75, %78
  %80 = add nsw i32 %74, %79
  store i32 %80, i32* %26, align 4
  %81 = load i32, i32* %25, align 4
  %82 = load i32, i32* %24, align 4
  %83 = sdiv i32 %81, %82
  store i32 %83, i32* %25, align 4
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %24, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %26, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %25, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %26, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = sdiv i32 %94, 32768
  %96 = sub nsw i32 %87, %95
  store i32 %96, i32* %27, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %25, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %26, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sub nsw i32 %100, %103
  %105 = sdiv i32 %104, 32768
  %106 = add nsw i32 %97, %105
  store i32 %106, i32* %28, align 4
  %107 = load i32, i32* %25, align 4
  %108 = load i32*, i32** %21, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %26, align 4
  %111 = load i32*, i32** %21, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %27, align 4
  %114 = load i32*, i32** %21, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %28, align 4
  %117 = load i32*, i32** %21, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  store i32 %116, i32* %118, align 4
  store i32 1, i32* %11, align 4
  br label %119

119:                                              ; preds = %57, %53
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
