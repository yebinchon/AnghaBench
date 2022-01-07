; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_set_audio_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_set_audio_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@EM2800_AUDIO_SRC_TUNER = common dso_local global i32 0, align 4
@EM2800_AUDIO_SRC_LINE = common dso_local global i32 0, align 4
@EM2800_R08_AUDIOSRC = common dso_local global i32 0, align 4
@EM28XX_AUDIO_SRC_TUNER = common dso_local global i32 0, align 4
@EM28XX_AUDIO_SRC_LINE = common dso_local global i32 0, align 4
@EM28XX_R0E_AUDIOSRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_set_audio_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_set_audio_source(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 129
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @EM2800_AUDIO_SRC_TUNER, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @EM2800_AUDIO_SRC_LINE, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = load i32, i32* @EM2800_R08_AUDIOSRC, align 4
  %23 = call i32 @em28xx_write_regs(%struct.em28xx* %21, i32 %22, i32* %5, i32 1)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %93

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %31 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EM28XX_AUDIO_SRC_TUNER, align 4
  store i32 %35, i32* %5, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %42 [
    i32 129, label %40
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @EM28XX_AUDIO_SRC_TUNER, align 4
  store i32 %41, i32* %5, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EM28XX_AUDIO_SRC_LINE, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %58 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %59 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @em28xx_gpio_set(%struct.em28xx* %57, i64 %61)
  br label %72

63:                                               ; preds = %51, %45
  %64 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %65 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_6__* @INPUT(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @em28xx_gpio_set(%struct.em28xx* %64, i64 %70)
  br label %72

72:                                               ; preds = %63, %56
  %73 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %74 = load i32, i32* @EM28XX_R0E_AUDIOSRC, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %73, i32 %74, i32 %75, i32 192)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %93

81:                                               ; preds = %72
  %82 = call i32 @usleep_range(i32 10000, i32 11000)
  %83 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %84 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %88 [
    i32 128, label %87
  ]

87:                                               ; preds = %81
  br label %91

88:                                               ; preds = %81
  %89 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %90 = call i32 @set_ac97_input(%struct.em28xx* %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %79, %26
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @em28xx_gpio_set(%struct.em28xx*, i64) #1

declare dso_local %struct.TYPE_6__* @INPUT(i32) #1

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @set_ac97_input(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
