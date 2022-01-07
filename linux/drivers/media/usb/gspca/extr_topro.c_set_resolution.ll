; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_set_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_set_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i64, i32, i32 }

@TP6800_R21_ENDP_1_CTL = common dso_local global i32 0, align 4
@TP6800_R3F_FRAME_RATE = common dso_local global i32 0, align 4
@CX0342_AUTO_ADC_CALIB = common dso_local global i32 0, align 4
@TP6800_R78_FORMAT = common dso_local global i32 0, align 4
@TP6800_R5D_DEMOSAIC_CFG = common dso_local global i32 0, align 4
@CX0342_EXPO_LINE_L = common dso_local global i32 0, align 4
@CX0342_EXPO_LINE_H = common dso_local global i32 0, align 4
@CX0342_SYS_CTRL_0 = common dso_local global i32 0, align 4
@color_gain = common dso_local global i32* null, align 8
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@SENSOR_SOI763A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @set_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_resolution(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load i32, i32* @TP6800_R21_ENDP_1_CTL, align 4
  %8 = call i32 @reg_w(%struct.gspca_dev* %6, i32 %7, i32 0)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 320
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = load i32, i32* @TP6800_R3F_FRAME_RATE, align 4
  %17 = call i32 @reg_w(%struct.gspca_dev* %15, i32 %16, i32 6)
  %18 = call i32 @msleep(i32 100)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32, i32* @CX0342_AUTO_ADC_CALIB, align 4
  %21 = call i32 @i2c_w(%struct.gspca_dev* %19, i32 %20, i32 1)
  %22 = call i32 @msleep(i32 100)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* @TP6800_R21_ENDP_1_CTL, align 4
  %25 = call i32 @reg_w(%struct.gspca_dev* %23, i32 %24, i32 3)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %28 = call i32 @reg_w(%struct.gspca_dev* %26, i32 %27, i32 1)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = load i32, i32* @TP6800_R5D_DEMOSAIC_CFG, align 4
  %31 = call i32 @reg_w(%struct.gspca_dev* %29, i32 %30, i32 13)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = load i32, i32* @CX0342_EXPO_LINE_L, align 4
  %34 = call i32 @i2c_w(%struct.gspca_dev* %32, i32 %33, i32 55)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i32, i32* @CX0342_EXPO_LINE_H, align 4
  %37 = call i32 @i2c_w(%struct.gspca_dev* %35, i32 %36, i32 1)
  br label %62

38:                                               ; preds = %1
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* @TP6800_R3F_FRAME_RATE, align 4
  %41 = call i32 @reg_w(%struct.gspca_dev* %39, i32 %40, i32 5)
  %42 = call i32 @msleep(i32 100)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load i32, i32* @CX0342_AUTO_ADC_CALIB, align 4
  %45 = call i32 @i2c_w(%struct.gspca_dev* %43, i32 %44, i32 1)
  %46 = call i32 @msleep(i32 100)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load i32, i32* @TP6800_R21_ENDP_1_CTL, align 4
  %49 = call i32 @reg_w(%struct.gspca_dev* %47, i32 %48, i32 3)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %52 = call i32 @reg_w(%struct.gspca_dev* %50, i32 %51, i32 0)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = load i32, i32* @TP6800_R5D_DEMOSAIC_CFG, align 4
  %55 = call i32 @reg_w(%struct.gspca_dev* %53, i32 %54, i32 9)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* @CX0342_EXPO_LINE_L, align 4
  %58 = call i32 @i2c_w(%struct.gspca_dev* %56, i32 %57, i32 207)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32, i32* @CX0342_EXPO_LINE_H, align 4
  %61 = call i32 @i2c_w(%struct.gspca_dev* %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %38, %14
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = load i32, i32* @CX0342_SYS_CTRL_0, align 4
  %65 = call i32 @i2c_w(%struct.gspca_dev* %63, i32 %64, i32 1)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = load i32*, i32** @color_gain, align 8
  %68 = load i64, i64* @SENSOR_CX0342, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @color_gain, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ARRAY_SIZE(i32 %73)
  %75 = call i32 @bulk_w(%struct.gspca_dev* %66, i32 3, i32 %70, i32 %74)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = getelementptr inbounds %struct.sd, %struct.sd* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @v4l2_ctrl_g_ctrl(i32 %79)
  %81 = call i32 @setgamma(%struct.gspca_dev* %76, i32 %80)
  %82 = load %struct.sd*, %struct.sd** %3, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SENSOR_SOI763A, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %62
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = load %struct.sd*, %struct.sd** %3, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @v4l2_ctrl_g_ctrl(i32 %91)
  %93 = call i32 @setquality(%struct.gspca_dev* %88, i32 %92)
  br label %94

94:                                               ; preds = %87, %62
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @bulk_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @setquality(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
