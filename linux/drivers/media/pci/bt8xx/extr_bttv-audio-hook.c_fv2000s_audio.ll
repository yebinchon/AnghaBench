; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_fv2000s_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_fv2000s_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64 }
%struct.v4l2_tuner = type { i32, i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"fv2000s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fv2000s_audio(%struct.bttv* %0, %struct.v4l2_tuner* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bttv*, %struct.bttv** %4, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %43

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %17, i32 0, i32 0
  store i32 131, i32* %18, align 4
  %19 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %20 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %43

28:                                               ; preds = %13
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %34 [
    i32 129, label %32
    i32 131, label %33
    i32 130, label %33
    i32 128, label %33
  ]

32:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %35

33:                                               ; preds = %28, %28, %28
  store i32 4224, i32* %7, align 4
  br label %35

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %33, %32
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @gpio_bits(i32 6144, i32 %36)
  %38 = load i64, i64* @bttv_gpio, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.bttv*, %struct.bttv** %4, align 8
  %42 = call i32 @bttv_gpio_tracking(%struct.bttv* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %12, %16, %34, %40, %35
  ret void
}

declare dso_local i32 @gpio_bits(i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
