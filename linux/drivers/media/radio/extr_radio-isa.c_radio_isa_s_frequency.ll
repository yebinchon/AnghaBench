; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-isa.c_radio_isa_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.radio_isa_card = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.radio_isa_card*, i32)* }

@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FREQ_LOW = common dso_local global i32 0, align 4
@FREQ_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @radio_isa_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_isa_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.radio_isa_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.radio_isa_card* @video_drvdata(%struct.file* %11)
  store %struct.radio_isa_card* %12, %struct.radio_isa_card** %8, align 8
  %13 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FREQ_LOW, align 4
  %32 = load i32, i32* @FREQ_HIGH, align 4
  %33 = call i32 @clamp(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %35 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.radio_isa_card*, i32)*, i32 (%struct.radio_isa_card*, i32)** %39, align 8
  %41 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %40(%struct.radio_isa_card* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.radio_isa_card*, %struct.radio_isa_card** %8, align 8
  %49 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %29
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.radio_isa_card* @video_drvdata(%struct.file*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
