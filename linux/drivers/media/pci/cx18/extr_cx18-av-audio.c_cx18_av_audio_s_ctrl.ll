; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_cx18_av_audio_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_cx18_av_audio_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.cx18 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cx18_av_audio_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_audio_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.cx18*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %6 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %7 = call %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.cx18* %9, %struct.cx18** %5, align 8
  %10 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %43 [
    i32 128, label %13
    i32 131, label %19
    i32 129, label %25
    i32 132, label %31
    i32 130, label %37
  ]

13:                                               ; preds = %1
  %14 = load %struct.cx18*, %struct.cx18** %5, align 8
  %15 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @set_volume(%struct.cx18* %14, i32 %17)
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.cx18*, %struct.cx18** %5, align 8
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_bass(%struct.cx18* %20, i32 %23)
  br label %46

25:                                               ; preds = %1
  %26 = load %struct.cx18*, %struct.cx18** %5, align 8
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @set_treble(%struct.cx18* %26, i32 %29)
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.cx18*, %struct.cx18** %5, align 8
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_balance(%struct.cx18* %32, i32 %35)
  br label %46

37:                                               ; preds = %1
  %38 = load %struct.cx18*, %struct.cx18** %5, align 8
  %39 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_mute(%struct.cx18* %38, i32 %41)
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %37, %31, %25, %19, %13
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.v4l2_subdev* @to_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @set_volume(%struct.cx18*, i32) #1

declare dso_local i32 @set_bass(%struct.cx18*, i32) #1

declare dso_local i32 @set_treble(%struct.cx18*, i32) #1

declare dso_local i32 @set_balance(%struct.cx18*, i32) #1

declare dso_local i32 @set_mute(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
