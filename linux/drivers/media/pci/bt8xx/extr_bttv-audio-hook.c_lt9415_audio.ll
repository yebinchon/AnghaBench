; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_lt9415_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_lt9415_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.v4l2_tuner = type { i32, i32 }

@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"lt9415\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lt9415_audio(%struct.bttv* %0, %struct.v4l2_tuner* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @gpio_read()
  %9 = and i32 %8, 16384
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %13 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %46

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %23 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %46

31:                                               ; preds = %15
  %32 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %37 [
    i32 129, label %35
    i32 128, label %36
  ]

35:                                               ; preds = %31
  store i32 128, i32* %7, align 4
  br label %38

36:                                               ; preds = %31
  store i32 2176, i32* %7, align 4
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %36, %35
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @gpio_bits(i32 2176, i32 %39)
  %41 = load i64, i64* @bttv_gpio, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.bttv*, %struct.bttv** %4, align 8
  %45 = call i32 @bttv_gpio_tracking(%struct.bttv* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %11, %18, %43, %38
  ret void
}

declare dso_local i32 @gpio_read(...) #1

declare dso_local i32 @gpio_bits(i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
