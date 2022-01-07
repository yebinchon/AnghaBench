; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_clamp_coarse_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx274.c_imx274_clamp_coarse_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stimx274 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@IMX274_SHR_LIMIT_CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stimx274*, i64*, i64*)* @imx274_clamp_coarse_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx274_clamp_coarse_time(%struct.stimx274* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stimx274*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.stimx274* %0, %struct.stimx274** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %10 = load i64*, i64** %7, align 8
  %11 = call i32 @imx274_get_frame_length(%struct.stimx274* %9, i64* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %70

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %20 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %18, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %27 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %16
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %34, %36
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IMX274_SHR_LIMIT_CONST, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp sgt i64 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IMX274_SHR_LIMIT_CONST, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  br label %69

52:                                               ; preds = %32
  %53 = load i64*, i64** %6, align 8
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %56 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load %struct.stimx274*, %struct.stimx274** %5, align 8
  %63 = getelementptr inbounds %struct.stimx274, %struct.stimx274* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %6, align 8
  store i64 %66, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %52
  br label %69

69:                                               ; preds = %68, %46
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %14
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @imx274_get_frame_length(%struct.stimx274*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
