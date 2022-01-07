; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_accumulator_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_accumulator_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"em28xx Scale: (%d,%d)-(%d,%d)\0A\00", align 1
@EM28XX_R28_XMIN = common dso_local global i32 0, align 4
@EM28XX_R29_XMAX = common dso_local global i32 0, align 4
@EM28XX_R2A_YMIN = common dso_local global i32 0, align 4
@EM28XX_R2B_YMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32, i32, i32)* @em28xx_accumulator_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_accumulator_set(%struct.em28xx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %17 = load i32, i32* @EM28XX_R28_XMIN, align 4
  %18 = call i32 @em28xx_write_regs(%struct.em28xx* %16, i32 %17, i32* %7, i32 1)
  %19 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %20 = load i32, i32* @EM28XX_R29_XMAX, align 4
  %21 = call i32 @em28xx_write_regs(%struct.em28xx* %19, i32 %20, i32* %8, i32 1)
  %22 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %23 = load i32, i32* @EM28XX_R2A_YMIN, align 4
  %24 = call i32 @em28xx_write_regs(%struct.em28xx* %22, i32 %23, i32* %9, i32 1)
  %25 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %26 = load i32, i32* @EM28XX_R2B_YMAX, align 4
  %27 = call i32 @em28xx_write_regs(%struct.em28xx* %25, i32 %26, i32* %10, i32 1)
  ret i32 %27
}

declare dso_local i32 @em28xx_videodbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
