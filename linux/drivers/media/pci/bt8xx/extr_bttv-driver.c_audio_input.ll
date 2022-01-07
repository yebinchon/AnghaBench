; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_audio_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_audio_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MSP_INPUT_DEFAULT = common dso_local global i32 0, align 4
@MSP_IN_SCART2 = common dso_local global i32 0, align 4
@MSP_IN_TUNER1 = common dso_local global i32 0, align 4
@MSP_DSP_IN_SCART = common dso_local global i32 0, align 4
@MSP_IN_SCART1 = common dso_local global i32 0, align 4
@BTTV_BOARD_VOODOOTV_200 = common dso_local global i32 0, align 4
@MSP_IN_TUNER2 = common dso_local global i32 0, align 4
@MSP_DSP_IN_TUNER = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@MSP_OUTPUT_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bttv*, i32)* @audio_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_input(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bttv*, %struct.bttv** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bttv*, %struct.bttv** %3, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @audio_mux_gpio(%struct.bttv* %6, i32 %7, i32 %10)
  %12 = load %struct.bttv*, %struct.bttv** %3, align 8
  %13 = getelementptr inbounds %struct.bttv, %struct.bttv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %44 [
    i32 129, label %18
    i32 131, label %31
    i32 130, label %37
    i32 128, label %43
  ]

18:                                               ; preds = %16
  %19 = load %struct.bttv*, %struct.bttv** %3, align 8
  %20 = getelementptr inbounds %struct.bttv, %struct.bttv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @MSP_INPUT_DEFAULT, align 4
  store i32 %24, i32* %5, align 4
  br label %60

25:                                               ; preds = %18
  %26 = load i32, i32* @MSP_IN_SCART2, align 4
  %27 = load i32, i32* @MSP_IN_TUNER1, align 4
  %28 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %29 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %30 = call i32 @MSP_INPUT(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %60

31:                                               ; preds = %16
  %32 = load i32, i32* @MSP_IN_SCART1, align 4
  %33 = load i32, i32* @MSP_IN_TUNER1, align 4
  %34 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %35 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %36 = call i32 @MSP_INPUT(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %60

37:                                               ; preds = %16
  %38 = load i32, i32* @MSP_IN_SCART2, align 4
  %39 = load i32, i32* @MSP_IN_TUNER1, align 4
  %40 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %41 = load i32, i32* @MSP_DSP_IN_SCART, align 4
  %42 = call i32 @MSP_INPUT(i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %60

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %16, %43
  %45 = load %struct.bttv*, %struct.bttv** %3, align 8
  %46 = getelementptr inbounds %struct.bttv, %struct.bttv* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BTTV_BOARD_VOODOOTV_200, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @MSP_IN_SCART1, align 4
  %53 = load i32, i32* @MSP_IN_TUNER2, align 4
  %54 = load i32, i32* @MSP_DSP_IN_TUNER, align 4
  %55 = load i32, i32* @MSP_DSP_IN_TUNER, align 4
  %56 = call i32 @MSP_INPUT(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @MSP_INPUT_DEFAULT, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %57, %51
  br label %60

60:                                               ; preds = %59, %37, %31, %25, %23
  %61 = load %struct.bttv*, %struct.bttv** %3, align 8
  %62 = getelementptr inbounds %struct.bttv, %struct.bttv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @audio, align 4
  %65 = load i32, i32* @s_routing, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @MSP_OUTPUT_DEFAULT, align 4
  %68 = call i32 @v4l2_subdev_call(i64 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %60, %2
  %70 = load %struct.bttv*, %struct.bttv** %3, align 8
  %71 = getelementptr inbounds %struct.bttv, %struct.bttv* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.bttv*, %struct.bttv** %3, align 8
  %76 = getelementptr inbounds %struct.bttv, %struct.bttv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @audio, align 4
  %79 = load i32, i32* @s_routing, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @v4l2_subdev_call(i64 %77, i32 %78, i32 %79, i32 %80, i32 0, i32 0)
  br label %82

82:                                               ; preds = %74, %69
  ret i32 0
}

declare dso_local i32 @audio_mux_gpio(%struct.bttv*, i32, i32) #1

declare dso_local i32 @MSP_INPUT(i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
