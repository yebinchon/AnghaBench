; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_avermedia_tv_stereo_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-audio-hook.c_avermedia_tv_stereo_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.v4l2_tuner = type { i32, i32 }

@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@BT848_GPIO_DATA = common dso_local global i32 0, align 4
@bttv_gpio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"avermedia\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avermedia_tv_stereo_audio(%struct.bttv* %0, %struct.v4l2_tuner* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %12 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %15 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %39

23:                                               ; preds = %3
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %29 [
    i32 129, label %27
    i32 128, label %28
  ]

27:                                               ; preds = %23
  store i32 1, i32* %7, align 4
  br label %30

28:                                               ; preds = %23
  store i32 2, i32* %7, align 4
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %28, %27
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BT848_GPIO_DATA, align 4
  %33 = call i32 @btaor(i32 %31, i32 -4, i32 %32)
  %34 = load i64, i64* @bttv_gpio, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.bttv*, %struct.bttv** %4, align 8
  %38 = call i32 @bttv_gpio_tracking(%struct.bttv* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %10, %36, %30
  ret void
}

declare dso_local i32 @btaor(i32, i32, i32) #1

declare dso_local i32 @bttv_gpio_tracking(%struct.bttv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
