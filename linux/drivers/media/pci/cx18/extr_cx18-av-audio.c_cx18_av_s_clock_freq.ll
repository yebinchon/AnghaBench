; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_cx18_av_s_clock_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_cx18_av_s_clock_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i64 }

@CX18_AV_AUDIO_SERIAL2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_s_clock_freq(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.cx18_av_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.cx18* %10, %struct.cx18** %5, align 8
  %11 = load %struct.cx18*, %struct.cx18** %5, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 0
  store %struct.cx18_av_state* %12, %struct.cx18_av_state** %6, align 8
  %13 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %14 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CX18_AV_AUDIO_SERIAL2, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.cx18*, %struct.cx18** %5, align 8
  %20 = call i32 @cx18_av_read(%struct.cx18* %19, i32 2051)
  %21 = and i32 %20, -17
  store i32 %21, i32* %8, align 4
  %22 = load %struct.cx18*, %struct.cx18** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @cx18_av_write_expect(%struct.cx18* %22, i32 2051, i32 %23, i32 %24, i32 31)
  %26 = load %struct.cx18*, %struct.cx18** %5, align 8
  %27 = call i32 @cx18_av_write(%struct.cx18* %26, i32 2259, i32 31)
  br label %28

28:                                               ; preds = %18, %2
  %29 = load %struct.cx18*, %struct.cx18** %5, align 8
  %30 = call i32 @cx18_av_read(%struct.cx18* %29, i32 2064)
  %31 = or i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load %struct.cx18*, %struct.cx18** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cx18_av_write_expect(%struct.cx18* %32, i32 2064, i32 %33, i32 %34, i32 15)
  %36 = load %struct.cx18*, %struct.cx18** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @set_audclk_freq(%struct.cx18* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.cx18*, %struct.cx18** %5, align 8
  %40 = call i32 @cx18_av_read(%struct.cx18* %39, i32 2064)
  %41 = and i32 %40, -2
  store i32 %41, i32* %8, align 4
  %42 = load %struct.cx18*, %struct.cx18** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @cx18_av_write_expect(%struct.cx18* %42, i32 2064, i32 %43, i32 %44, i32 15)
  %46 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %47 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CX18_AV_AUDIO_SERIAL2, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %28
  %52 = load %struct.cx18*, %struct.cx18** %5, align 8
  %53 = call i32 @cx18_av_read(%struct.cx18* %52, i32 2051)
  %54 = or i32 %53, 16
  store i32 %54, i32* %8, align 4
  %55 = load %struct.cx18*, %struct.cx18** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @cx18_av_write_expect(%struct.cx18* %55, i32 2051, i32 %56, i32 %57, i32 31)
  br label %59

59:                                               ; preds = %51, %28
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

declare dso_local i32 @set_audclk_freq(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
