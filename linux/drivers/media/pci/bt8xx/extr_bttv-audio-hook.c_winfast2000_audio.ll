; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_winfast2000_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_winfast2000_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.v4l2_tuner = type { i32, i32 }

@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"winfast2000\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @winfast2000_audio(%struct.bttv* %0, %struct.v4l2_tuner* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  store i32 131, i32* %12, align 4
  %13 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %14 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %29 [
    i32 129, label %26
    i32 131, label %26
    i32 130, label %27
    i32 128, label %28
  ]

26:                                               ; preds = %22, %22
  store i64 4325376, i64* %7, align 8
  br label %30

27:                                               ; preds = %22
  store i64 4259840, i64* %7, align 8
  br label %30

28:                                               ; preds = %22
  store i64 131072, i64* %7, align 8
  br label %30

29:                                               ; preds = %22
  br label %38

30:                                               ; preds = %28, %27, %26
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @gpio_bits(i32 4390912, i64 %31)
  %33 = load i64, i64* @bttv_gpio, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.bttv*, %struct.bttv** %4, align 8
  %37 = call i32 @bttv_gpio_tracking(%struct.bttv* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %10, %29, %35, %30
  ret void
}

declare dso_local i32 @gpio_bits(i32, i64) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
