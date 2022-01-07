; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_audio_bitrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_audio_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TM6010 = common dso_local global i64 0, align 8
@TM6010_REQ08_R0A_A_I2S_MOD = common dso_local global i32 0, align 4
@TM6010_REQ08_RF0_DAUDIO_INPUT_CONFIG = common dso_local global i32 0, align 4
@TM6000_REQ07_REB_VADC_AADC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tm6000_set_audio_bitrate(%struct.tm6000_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm6000_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 96, i32* %7, align 4
  store i32 145, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %18 [
    i32 48000, label %10
    i32 32000, label %14
  ]

10:                                               ; preds = %2
  store i32 96, i32* %7, align 4
  store i32 145, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %13 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  br label %21

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 144, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %17 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %57

21:                                               ; preds = %14, %10
  %22 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %23 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TM6010, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %29 = load i32, i32* @TM6010_REQ08_R0A_A_I2S_MOD, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @tm6000_set_reg(%struct.tm6000_core* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %27
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %38 = load i32, i32* @TM6010_REQ08_RF0_DAUDIO_INPUT_CONFIG, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %37, i32 %38, i32 %39, i32 240)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %57

45:                                               ; preds = %36
  br label %56

46:                                               ; preds = %21
  %47 = load %struct.tm6000_core*, %struct.tm6000_core** %4, align 8
  %48 = load i32, i32* @TM6000_REQ07_REB_VADC_AADC_MODE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @tm6000_set_reg_mask(%struct.tm6000_core* %47, i32 %48, i32 %49, i32 240)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %45
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %43, %34, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32) #1

declare dso_local i32 @tm6000_set_reg_mask(%struct.tm6000_core*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
