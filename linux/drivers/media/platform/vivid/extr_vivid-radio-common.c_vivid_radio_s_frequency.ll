; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-common.c_vivid_radio_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-radio-common.c_vivid_radio_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.vivid_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FM_FREQ_RANGE_LOW = common dso_local global i32 0, align 4
@SW_FREQ_RANGE_HIGH = common dso_local global i32 0, align 4
@BAND_FM = common dso_local global i32 0, align 4
@AM_FREQ_RANGE_HIGH = common dso_local global i32 0, align 4
@SW_FREQ_RANGE_LOW = common dso_local global i32 0, align 4
@BAND_AM = common dso_local global i32 0, align 4
@BAND_SW = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@vivid_radio_bands = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vivid_radio_s_frequency(%struct.file* %0, i32* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.vivid_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vivid_dev* @video_drvdata(%struct.file* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %8, align 8
  %13 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FM_FREQ_RANGE_LOW, align 4
  %25 = load i32, i32* @SW_FREQ_RANGE_HIGH, align 4
  %26 = add nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  %28 = icmp sge i32 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @BAND_FM, align 4
  store i32 %30, i32* %10, align 4
  br label %45

31:                                               ; preds = %20
  %32 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @AM_FREQ_RANGE_HIGH, align 4
  %36 = load i32, i32* @SW_FREQ_RANGE_LOW, align 4
  %37 = add nsw i32 %35, %36
  %38 = sdiv i32 %37, 2
  %39 = icmp sle i32 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @BAND_AM, align 4
  store i32 %41, i32* %10, align 4
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* @BAND_SW, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* @u32, align 4
  %47 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vivid_radio_bands, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clamp_t(i32 %46, i32 %49, i32 %55, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %66 = call i32 @vivid_radio_calc_sig_qual(%struct.vivid_dev* %65)
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %8, align 8
  %68 = call i32 @vivid_radio_rds_init(%struct.vivid_dev* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %45, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.vivid_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @vivid_radio_calc_sig_qual(%struct.vivid_dev*) #1

declare dso_local i32 @vivid_radio_rds_init(%struct.vivid_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
