; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_stereo_mono.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_rx.c_fm_rx_set_stereo_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32 }

@FM_STEREO_MODE = common dso_local global i64 0, align 8
@FM_MONO_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Invalid mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MOST_MODE_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@FM_STEREO_SOFT_BLEND = common dso_local global i64 0, align 8
@MOST_BLEND_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm_rx_set_stereo_mono(%struct.fmdev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @FM_STEREO_MODE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @FM_MONO_MODE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = call i32 @fmerr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %40

19:                                               ; preds = %11, %2
  %20 = load i64, i64* %5, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %22 = load i32, i32* @MOST_MODE_SET, align 4
  %23 = load i32, i32* @REG_WR, align 4
  %24 = call i32 @fmc_send_cmd(%struct.fmdev* %21, i32 %22, i32 %23, i64* %6, i32 8, i32* null, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %19
  %30 = load i64, i64* @FM_STEREO_SOFT_BLEND, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %32 = load i32, i32* @MOST_BLEND_SET, align 4
  %33 = load i32, i32* @REG_WR, align 4
  %34 = call i32 @fmc_send_cmd(%struct.fmdev* %31, i32 %32, i32 %33, i64* %6, i32 8, i32* null, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37, %27, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i64*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
