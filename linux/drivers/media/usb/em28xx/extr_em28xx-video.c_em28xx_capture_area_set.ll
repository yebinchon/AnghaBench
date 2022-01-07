; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_capture_area_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_capture_area_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"capture area set to (%d,%d): %dx%d\0A\00", align 1
@EM28XX_R1C_HSTART = common dso_local global i32 0, align 4
@EM28XX_R1D_VSTART = common dso_local global i32 0, align 4
@EM28XX_R1E_CWIDTH = common dso_local global i32 0, align 4
@EM28XX_R1F_CHEIGHT = common dso_local global i32 0, align 4
@EM28XX_R1B_OFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, i32, i32, i32, i32)* @em28xx_capture_area_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_capture_area_set(%struct.em28xx* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = ashr i32 %14, 2
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = ashr i32 %16, 2
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = ashr i32 %18, 9
  %20 = and i32 %19, 2
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 10
  %23 = and i32 %22, 1
  %24 = or i32 %20, %23
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %13, align 4
  %28 = and i32 %27, 2
  %29 = shl i32 %28, 9
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 %30, 2
  %32 = or i32 %29, %31
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %33, 1
  %35 = shl i32 %34, 10
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 %36, 2
  %38 = or i32 %35, %37
  %39 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %32, i32 %38)
  %40 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %41 = load i32, i32* @EM28XX_R1C_HSTART, align 4
  %42 = call i32 @em28xx_write_regs(%struct.em28xx* %40, i32 %41, i32* %7, i32 1)
  %43 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %44 = load i32, i32* @EM28XX_R1D_VSTART, align 4
  %45 = call i32 @em28xx_write_regs(%struct.em28xx* %43, i32 %44, i32* %8, i32 1)
  %46 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %47 = load i32, i32* @EM28XX_R1E_CWIDTH, align 4
  %48 = call i32 @em28xx_write_regs(%struct.em28xx* %46, i32 %47, i32* %11, i32 1)
  %49 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %50 = load i32, i32* @EM28XX_R1F_CHEIGHT, align 4
  %51 = call i32 @em28xx_write_regs(%struct.em28xx* %49, i32 %50, i32* %12, i32 1)
  %52 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %53 = load i32, i32* @EM28XX_R1B_OFLOW, align 4
  %54 = call i32 @em28xx_write_regs(%struct.em28xx* %52, i32 %53, i32* %13, i32 1)
  %55 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %5
  %60 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 4
  %63 = call i32 @em28xx_write_reg(%struct.em28xx* %60, i32 52, i32 %62)
  %64 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = ashr i32 %65, 4
  %67 = call i32 @em28xx_write_reg(%struct.em28xx* %64, i32 53, i32 %66)
  br label %68

68:                                               ; preds = %59, %5
  ret void
}

declare dso_local i32 @em28xx_videodbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
