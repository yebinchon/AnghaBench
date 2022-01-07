; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_set_outfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_set_outfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EM28XX_R27_OUTFMT = common dso_local global i32 0, align 4
@EM28XX_R10_VINMODE = common dso_local global i32 0, align 4
@EM28XX_VINCTRL_VBI_RAW = common dso_local global i32 0, align 4
@EM28XX_R34_VBI_START_H = common dso_local global i32 0, align 4
@EM28XX_R36_VBI_WIDTH = common dso_local global i32 0, align 4
@EM28XX_R37_VBI_HEIGHT = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@EM28XX_R35_VBI_START_V = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@EM28XX_R11_VINCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_set_outfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_set_outfmt(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.em28xx_v4l2*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 1
  %10 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  store %struct.em28xx_v4l2* %10, %struct.em28xx_v4l2** %7, align 8
  %11 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %12 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %17 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 32
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %25 = load i32, i32* @EM28XX_R27_OUTFMT, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @em28xx_write_reg(%struct.em28xx* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %98

32:                                               ; preds = %23
  %33 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %34 = load i32, i32* @EM28XX_R10_VINMODE, align 4
  %35 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %36 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @em28xx_write_reg(%struct.em28xx* %33, i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %98

43:                                               ; preds = %32
  %44 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %45 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %48 = call i32 @em28xx_vbi_supported(%struct.em28xx* %47)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %93

50:                                               ; preds = %43
  %51 = load i32, i32* @EM28XX_VINCTRL_VBI_RAW, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %55 = load i32, i32* @EM28XX_R34_VBI_START_H, align 4
  %56 = call i32 @em28xx_write_reg(%struct.em28xx* %54, i32 %55, i32 0)
  %57 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %58 = load i32, i32* @EM28XX_R36_VBI_WIDTH, align 4
  %59 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %60 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 4
  %63 = call i32 @em28xx_write_reg(%struct.em28xx* %57, i32 %58, i32 %62)
  %64 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %65 = load i32, i32* @EM28XX_R37_VBI_HEIGHT, align 4
  %66 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %67 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @em28xx_write_reg(%struct.em28xx* %64, i32 %65, i32 %68)
  %70 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %71 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @V4L2_STD_525_60, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %50
  %77 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %78 = load i32, i32* @EM28XX_R35_VBI_START_V, align 4
  %79 = call i32 @em28xx_write_reg(%struct.em28xx* %77, i32 %78, i32 9)
  br label %92

80:                                               ; preds = %50
  %81 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %7, align 8
  %82 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @V4L2_STD_625_50, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %89 = load i32, i32* @EM28XX_R35_VBI_START_V, align 4
  %90 = call i32 @em28xx_write_reg(%struct.em28xx* %88, i32 %89, i32 7)
  br label %91

91:                                               ; preds = %87, %80
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %92, %43
  %94 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %95 = load i32, i32* @EM28XX_R11_VINCTRL, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @em28xx_write_reg(%struct.em28xx* %94, i32 %95, i32 %96)
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %41, %30
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @em28xx_vbi_supported(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
