; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_soi763a_6800_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_soi763a_6800_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32, i32 }
%struct.sd = type { i64, i32, i32, i32, i32, i32 }

@soi763a_6800_start.reg_init = internal constant [33 x %struct.cmd] [%struct.cmd { i32 129, i32 4 }, %struct.cmd { i32 129, i32 1 }, %struct.cmd { i32 158, i32 0 }, %struct.cmd { i32 137, i32 0 }, %struct.cmd { i32 136, i32 0 }, %struct.cmd { i32 135, i32 255 }, %struct.cmd { i32 134, i32 3 }, %struct.cmd { i32 133, i32 7 }, %struct.cmd { i32 132, i32 64 }, %struct.cmd { i32 129, i32 3 }, %struct.cmd { i32 128, i32 64 }, %struct.cmd { i32 154, i32 70 }, %struct.cmd { i32 153, i32 16 }, %struct.cmd { i32 146, i32 0 }, %struct.cmd { i32 145, i32 0 }, %struct.cmd { i32 144, i32 0 }, %struct.cmd { i32 143, i32 0 }, %struct.cmd { i32 142, i32 0 }, %struct.cmd { i32 141, i32 0 }, %struct.cmd { i32 140, i32 0 }, %struct.cmd { i32 139, i32 0 }, %struct.cmd { i32 155, i32 3 }, %struct.cmd { i32 138, i32 4 }, %struct.cmd { i32 131, i32 14 }, %struct.cmd { i32 152, i32 27 }, %struct.cmd { i32 151, i32 154 }, %struct.cmd { i32 150, i32 2 }, %struct.cmd { i32 149, i32 15 }, %struct.cmd { i32 148, i32 244 }, %struct.cmd { i32 147, i32 1 }, %struct.cmd { i32 130, i32 1 }, %struct.cmd { i32 157, i32 33 }, %struct.cmd { i32 156, i32 0 }], align 16
@soi763a_6800_start.sensor_init = internal constant [46 x %struct.cmd] [%struct.cmd { i32 18, i32 72 }, %struct.cmd { i32 19, i32 160 }, %struct.cmd { i32 3, i32 164 }, %struct.cmd { i32 4, i32 48 }, %struct.cmd { i32 5, i32 136 }, %struct.cmd { i32 6, i32 96 }, %struct.cmd { i32 16, i32 65 }, %struct.cmd { i32 17, i32 64 }, %struct.cmd { i32 19, i32 160 }, %struct.cmd { i32 20, i32 0 }, %struct.cmd { i32 21, i32 20 }, %struct.cmd { i32 31, i32 65 }, %struct.cmd { i32 32, i32 128 }, %struct.cmd { i32 35, i32 238 }, %struct.cmd { i32 36, i32 80 }, %struct.cmd { i32 37, i32 122 }, %struct.cmd { i32 38, i32 0 }, %struct.cmd { i32 39, i32 226 }, %struct.cmd { i32 40, i32 176 }, %struct.cmd { i32 42, i32 0 }, %struct.cmd { i32 43, i32 0 }, %struct.cmd { i32 45, i32 129 }, %struct.cmd { i32 47, i32 157 }, %struct.cmd { i32 96, i32 128 }, %struct.cmd { i32 97, i32 0 }, %struct.cmd { i32 98, i32 136 }, %struct.cmd { i32 99, i32 17 }, %struct.cmd { i32 100, i32 137 }, %struct.cmd { i32 101, i32 0 }, %struct.cmd { i32 103, i32 148 }, %struct.cmd { i32 104, i32 122 }, %struct.cmd { i32 105, i32 15 }, %struct.cmd { i32 108, i32 128 }, %struct.cmd { i32 109, i32 128 }, %struct.cmd { i32 110, i32 128 }, %struct.cmd { i32 111, i32 255 }, %struct.cmd { i32 113, i32 32 }, %struct.cmd { i32 116, i32 32 }, %struct.cmd { i32 117, i32 134 }, %struct.cmd { i32 119, i32 181 }, %struct.cmd { i32 23, i32 24 }, %struct.cmd { i32 24, i32 191 }, %struct.cmd { i32 25, i32 3 }, %struct.cmd { i32 26, i32 248 }, %struct.cmd { i32 1, i32 128 }, %struct.cmd { i32 2, i32 128 }], align 16
@color_gain = common dso_local global %struct.cmd** null, align 8
@SENSOR_SOI763A = common dso_local global i64 0, align 8
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @soi763a_6800_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soi763a_6800_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([33 x %struct.cmd], [33 x %struct.cmd]* @soi763a_6800_start.reg_init, i64 0, i64 0))
  %8 = call i32 @reg_w_buf(%struct.gspca_dev* %6, %struct.cmd* getelementptr inbounds ([33 x %struct.cmd], [33 x %struct.cmd]* @soi763a_6800_start.reg_init, i64 0, i64 0), i32 %7)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @i2c_w(%struct.gspca_dev* %9, i32 18, i32 128)
  %11 = call i32 @msleep(i32 10)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([46 x %struct.cmd], [46 x %struct.cmd]* @soi763a_6800_start.sensor_init, i64 0, i64 0))
  %14 = call i32 @i2c_w_buf(%struct.gspca_dev* %12, %struct.cmd* getelementptr inbounds ([46 x %struct.cmd], [46 x %struct.cmd]* @soi763a_6800_start.sensor_init, i64 0, i64 0), i32 %13)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @reg_w(%struct.gspca_dev* %15, i32 132, i32 16)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @reg_w(%struct.gspca_dev* %17, i32 133, i32 0)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @v4l2_ctrl_g_ctrl(i32 %22)
  %24 = call i32 @setsharpness(%struct.gspca_dev* %19, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = load %struct.cmd**, %struct.cmd*** @color_gain, align 8
  %27 = load i64, i64* @SENSOR_SOI763A, align 8
  %28 = getelementptr inbounds %struct.cmd*, %struct.cmd** %26, i64 %27
  %29 = load %struct.cmd*, %struct.cmd** %28, align 8
  %30 = load %struct.cmd**, %struct.cmd*** @color_gain, align 8
  %31 = getelementptr inbounds %struct.cmd*, %struct.cmd** %30, i64 0
  %32 = load %struct.cmd*, %struct.cmd** %31, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.cmd* %32)
  %34 = call i32 @bulk_w(%struct.gspca_dev* %25, i32 3, %struct.cmd* %29, i32 %33)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @set_led(%struct.gspca_dev* %35, i32 1)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SENSOR_CX0342, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %1
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @v4l2_ctrl_g_ctrl(i32 %46)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @v4l2_ctrl_g_ctrl(i32 %50)
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @v4l2_ctrl_g_ctrl(i32 %54)
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @v4l2_ctrl_g_ctrl(i32 %58)
  %60 = call i32 @setexposure(%struct.gspca_dev* %43, i32 %47, i32 %51, i32 %55, i32 %59)
  br label %72

61:                                               ; preds = %1
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @v4l2_ctrl_g_ctrl(i32 %65)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @v4l2_ctrl_g_ctrl(i32 %69)
  %71 = call i32 @setexposure(%struct.gspca_dev* %62, i32 %66, i32 %70, i32 0, i32 0)
  br label %72

72:                                               ; preds = %61, %42
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SENSOR_SOI763A, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @v4l2_ctrl_g_ctrl(i32 %82)
  %84 = call i32 @setquality(%struct.gspca_dev* %79, i32 %83)
  br label %85

85:                                               ; preds = %78, %72
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @v4l2_ctrl_g_ctrl(i32 %89)
  %91 = call i32 @setgamma(%struct.gspca_dev* %86, i32 %90)
  ret void
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @bulk_w(%struct.gspca_dev*, i32, %struct.cmd*, i32) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @setquality(%struct.gspca_dev*, i32) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
