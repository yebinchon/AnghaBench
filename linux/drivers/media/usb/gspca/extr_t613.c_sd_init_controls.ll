; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i64, i8*, i32, i8*, i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@GAMMA_MAX = common dso_local global i32 0, align 4
@V4L2_CID_BACKLIGHT_COMPENSATION = common dso_local global i32 0, align 4
@SENSOR_TAS5130A = common dso_local global i64 0, align 8
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_SKETCH = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_COLORFX_BW = common dso_local global i32 0, align 4
@V4L2_COLORFX_SEPIA = common dso_local global i32 0, align 4
@V4L2_COLORFX_NEGATIVE = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_50HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 12)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 0, i32 14, i32 1, i32 8)
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %20 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %21 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %19, i32* @sd_ctrl_ops, i32 %20, i32 0, i32 13, i32 1, i32 7)
  %22 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %23 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %24 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %22, i32* @sd_ctrl_ops, i32 %23, i32 0, i32 15, i32 1, i32 5)
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %26 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %27 = load i32, i32* @GAMMA_MAX, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %25, i32* @sd_ctrl_ops, i32 %26, i32 0, i32 %27, i32 1, i32 10)
  %29 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %30 = load i32, i32* @V4L2_CID_BACKLIGHT_COMPENSATION, align 4
  %31 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %29, i32* @sd_ctrl_ops, i32 %30, i32 0, i32 1, i32 1, i32 1)
  %32 = load %struct.sd*, %struct.sd** %4, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SENSOR_TAS5130A, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %39 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %40 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %38, i32* @sd_ctrl_ops, i32 %39, i32 0, i32 1, i32 1, i32 0)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %43 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %44 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %42, i32* @sd_ctrl_ops, i32 %43, i32 0, i32 1, i32 1, i32 1)
  %45 = load %struct.sd*, %struct.sd** %4, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %48 = load i32, i32* @V4L2_CID_GAIN, align 4
  %49 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %47, i32* @sd_ctrl_ops, i32 %48, i32 16, i32 64, i32 1, i32 32)
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %53 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %54 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @sd_ctrl_ops, i32 %53, i32 -48, i32 48, i32 1, i32 0)
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %58 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %59 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %57, i32* @sd_ctrl_ops, i32 %58, i32 -48, i32 48, i32 1, i32 0)
  %60 = load %struct.sd*, %struct.sd** %4, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %63 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %64 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %62, i32* @sd_ctrl_ops, i32 %63, i32 0, i32 15, i32 1, i32 6)
  %65 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %66 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %67 = load i32, i32* @V4L2_COLORFX_SKETCH, align 4
  %68 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* @V4L2_COLORFX_BW, align 4
  %71 = shl i32 1, %70
  %72 = or i32 %69, %71
  %73 = load i32, i32* @V4L2_COLORFX_SEPIA, align 4
  %74 = shl i32 1, %73
  %75 = or i32 %72, %74
  %76 = load i32, i32* @V4L2_COLORFX_SKETCH, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = load i32, i32* @V4L2_COLORFX_NEGATIVE, align 4
  %80 = shl i32 1, %79
  %81 = or i32 %78, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %84 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %65, i32* @sd_ctrl_ops, i32 %66, i32 %67, i32 %82, i32 %83)
  %85 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %86 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %87 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %88 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_50HZ, align 4
  %89 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %85, i32* @sd_ctrl_ops, i32 %86, i32 %87, i32 1, i32 %88)
  %90 = load %struct.sd*, %struct.sd** %4, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %41
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %2, align 4
  br label %105

101:                                              ; preds = %41
  %102 = load %struct.sd*, %struct.sd** %4, align 8
  %103 = getelementptr inbounds %struct.sd, %struct.sd* %102, i32 0, i32 1
  %104 = call i32 @v4l2_ctrl_auto_cluster(i32 4, i8** %103, i32 0, i32 1)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
