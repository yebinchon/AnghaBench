; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_fill_survey_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_hw.c_ath10k_hw_fill_survey_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.survey_info = type { i32, i8*, i8* }

@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_hw_fill_survey_time(%struct.ath10k* %0, %struct.survey_info* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca %struct.survey_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store %struct.survey_info* %1, %struct.survey_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %16 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %17 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.survey_info*, %struct.survey_info** %8, align 8
  %20 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %24 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30, %6
  %35 = load i32, i32* %15, align 4
  switch i32 %35, label %60 [
    i32 129, label %36
    i32 128, label %48
    i32 130, label %59
  ]

36:                                               ; preds = %34
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  store i64 2147483647, i64* %13, align 8
  %41 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.survey_info*, %struct.survey_info** %8, align 8
  %44 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %36
  br label %60

48:                                               ; preds = %34
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i64 2147483647, i64* %13, align 8
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i64 2147483647, i64* %14, align 8
  br label %58

58:                                               ; preds = %57, %53
  br label %60

59:                                               ; preds = %34
  br label %60

60:                                               ; preds = %34, %59, %58, %47
  br label %61

61:                                               ; preds = %60, %30
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load i64, i64* %9, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %14, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* %10, align 8
  %71 = sub nsw i64 %70, %69
  store i64 %71, i64* %10, align 8
  %72 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i8* @CCNT_TO_MSEC(%struct.ath10k* %72, i64 %73)
  %75 = load %struct.survey_info*, %struct.survey_info** %8, align 8
  %76 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i8* @CCNT_TO_MSEC(%struct.ath10k* %77, i64 %78)
  %80 = load %struct.survey_info*, %struct.survey_info** %8, align 8
  %81 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  ret void
}

declare dso_local i8* @CCNT_TO_MSEC(%struct.ath10k*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
