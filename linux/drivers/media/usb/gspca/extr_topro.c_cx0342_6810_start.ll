; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_cx0342_6810_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_cx0342_6810_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32, i64 }
%struct.sd = type { i32, i32 }

@cx0342_6810_start.sensor_init_2 = internal constant [7 x %struct.cmd] [%struct.cmd { i32 148, i32 111 }, %struct.cmd { i32 149, i32 2 }, %struct.cmd { i32 141, i32 0 }, %struct.cmd { i32 142, i32 0 }, %struct.cmd { i32 140, i32 0 }, %struct.cmd { i32 143, i32 0 }, %struct.cmd { i32 137, i32 129 }], align 16
@cx0342_6810_start.bridge_init_2 = internal constant [7 x %struct.cmd] [%struct.cmd { i32 77, i32 0 }, %struct.cmd { i32 76, i32 255 }, %struct.cmd { i32 78, i32 255 }, %struct.cmd { i32 79, i32 0 }, %struct.cmd { i32 128, i32 0 }, %struct.cmd { i32 129, i32 4 }, %struct.cmd { i32 129, i32 1 }], align 16
@cx0342_6810_start.bridge_init_3 = internal constant [6 x %struct.cmd] [%struct.cmd { i32 135, i32 8 }, %struct.cmd { i32 134, i32 135 }, %struct.cmd { i32 133, i32 2 }, %struct.cmd { i32 132, i32 14 }, %struct.cmd { i32 131, i32 244 }, %struct.cmd { i32 130, i32 1 }], align 16
@cx0342_6810_start.sensor_init_3 = internal constant [8 x %struct.cmd] [%struct.cmd { i32 150, i32 129 }, %struct.cmd { i32 148, i32 111 }, %struct.cmd { i32 149, i32 2 }, %struct.cmd { i32 141, i32 0 }, %struct.cmd { i32 142, i32 0 }, %struct.cmd { i32 140, i32 0 }, %struct.cmd { i32 143, i32 0 }, %struct.cmd { i32 137, i32 129 }], align 16
@cx0342_6810_start.bridge_init_5 = internal constant [4 x %struct.cmd] [%struct.cmd { i32 77, i32 0 }, %struct.cmd { i32 76, i32 255 }, %struct.cmd { i32 78, i32 255 }, %struct.cmd { i32 79, i32 0 }], align 16
@cx0342_6810_start.sensor_init_4 = internal constant [7 x %struct.cmd] [%struct.cmd { i32 148, i32 211 }, %struct.cmd { i32 149, i32 1 }, %struct.cmd { i32 141, i32 64 }, %struct.cmd { i32 142, i32 64 }, %struct.cmd { i32 140, i32 64 }, %struct.cmd { i32 143, i32 64 }, %struct.cmd { i32 137, i32 129 }], align 16
@cx0342_6810_start.sensor_init_5 = internal constant [10 x %struct.cmd] [%struct.cmd { i32 147, i32 5 }, %struct.cmd { i32 152, i32 0 }, %struct.cmd { i32 151, i32 0 }, %struct.cmd { i32 145, i32 1 }, %struct.cmd { i32 136, i32 11 }, %struct.cmd { i32 144, i32 11 }, %struct.cmd { i32 146, i32 7 }, %struct.cmd { i32 138, i32 64 }, %struct.cmd { i32 139, i32 2 }, %struct.cmd { i32 150, i32 129 }], align 16
@tp6810_cx_init_common = common dso_local global %struct.cmd* null, align 8
@TP6800_R78_FORMAT = common dso_local global i32 0, align 4
@tp6810_bridge_start = common dso_local global %struct.cmd* null, align 8
@color_gain = common dso_local global %struct.cmd** null, align 8
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@TP6800_R3F_FRAME_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @cx0342_6810_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx0342_6810_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @reg_w(%struct.gspca_dev* %6, i32 34, i32 %9)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @cx0342_6810_start.sensor_init_2, i64 0, i64 0))
  %13 = call i32 @i2c_w_buf(%struct.gspca_dev* %11, %struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @cx0342_6810_start.sensor_init_2, i64 0, i64 0), i32 %12)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @cx0342_6810_start.bridge_init_2, i64 0, i64 0))
  %16 = call i32 @reg_w_buf(%struct.gspca_dev* %14, %struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @cx0342_6810_start.bridge_init_2, i64 0, i64 0), i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = load %struct.cmd*, %struct.cmd** @tp6810_cx_init_common, align 8
  %19 = load %struct.cmd*, %struct.cmd** @tp6810_cx_init_common, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.cmd* %19)
  %21 = call i32 @reg_w_buf(%struct.gspca_dev* %17, %struct.cmd* %18, i32 %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([6 x %struct.cmd], [6 x %struct.cmd]* @cx0342_6810_start.bridge_init_3, i64 0, i64 0))
  %24 = call i32 @reg_w_buf(%struct.gspca_dev* %22, %struct.cmd* getelementptr inbounds ([6 x %struct.cmd], [6 x %struct.cmd]* @cx0342_6810_start.bridge_init_3, i64 0, i64 0), i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @reg_w(%struct.gspca_dev* %30, i32 74, i32 127)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w(%struct.gspca_dev* %32, i32 7, i32 5)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %36 = call i32 @reg_w(%struct.gspca_dev* %34, i32 %35, i32 0)
  br label %45

37:                                               ; preds = %1
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @reg_w(%struct.gspca_dev* %38, i32 74, i32 255)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @reg_w(%struct.gspca_dev* %40, i32 7, i32 133)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %44 = call i32 @reg_w(%struct.gspca_dev* %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @v4l2_ctrl_g_ctrl(i32 %49)
  %51 = call i32 @setgamma(%struct.gspca_dev* %46, i32 %50)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load %struct.cmd*, %struct.cmd** @tp6810_bridge_start, align 8
  %54 = load %struct.cmd*, %struct.cmd** @tp6810_bridge_start, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.cmd* %54)
  %56 = call i32 @reg_w_buf(%struct.gspca_dev* %52, %struct.cmd* %53, i32 %55)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @v4l2_ctrl_g_ctrl(i32 %60)
  %62 = call i32 @setsharpness(%struct.gspca_dev* %57, i32 %61)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = load %struct.cmd**, %struct.cmd*** @color_gain, align 8
  %65 = load i64, i64* @SENSOR_CX0342, align 8
  %66 = getelementptr inbounds %struct.cmd*, %struct.cmd** %64, i64 %65
  %67 = load %struct.cmd*, %struct.cmd** %66, align 8
  %68 = load %struct.cmd**, %struct.cmd*** @color_gain, align 8
  %69 = getelementptr inbounds %struct.cmd*, %struct.cmd** %68, i64 0
  %70 = load %struct.cmd*, %struct.cmd** %69, align 8
  %71 = call i32 @ARRAY_SIZE(%struct.cmd* %70)
  %72 = call i32 @bulk_w(%struct.gspca_dev* %63, i32 3, %struct.cmd* %67, i32 %71)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = load i32, i32* @TP6800_R3F_FRAME_RATE, align 4
  %75 = call i32 @reg_w(%struct.gspca_dev* %73, i32 %74, i32 135)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([8 x %struct.cmd], [8 x %struct.cmd]* @cx0342_6810_start.sensor_init_3, i64 0, i64 0))
  %78 = call i32 @i2c_w_buf(%struct.gspca_dev* %76, %struct.cmd* getelementptr inbounds ([8 x %struct.cmd], [8 x %struct.cmd]* @cx0342_6810_start.sensor_init_3, i64 0, i64 0), i32 %77)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @cx0342_6810_start.bridge_init_5, i64 0, i64 0))
  %81 = call i32 @reg_w_buf(%struct.gspca_dev* %79, %struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @cx0342_6810_start.bridge_init_5, i64 0, i64 0), i32 %80)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @cx0342_6810_start.sensor_init_4, i64 0, i64 0))
  %84 = call i32 @i2c_w_buf(%struct.gspca_dev* %82, %struct.cmd* getelementptr inbounds ([7 x %struct.cmd], [7 x %struct.cmd]* @cx0342_6810_start.sensor_init_4, i64 0, i64 0), i32 %83)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @cx0342_6810_start.bridge_init_5, i64 0, i64 0))
  %87 = call i32 @reg_w_buf(%struct.gspca_dev* %85, %struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @cx0342_6810_start.bridge_init_5, i64 0, i64 0), i32 %86)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([10 x %struct.cmd], [10 x %struct.cmd]* @cx0342_6810_start.sensor_init_5, i64 0, i64 0))
  %90 = call i32 @i2c_w_buf(%struct.gspca_dev* %88, %struct.cmd* getelementptr inbounds ([10 x %struct.cmd], [10 x %struct.cmd]* @cx0342_6810_start.sensor_init_5, i64 0, i64 0), i32 %89)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = call i32 @set_led(%struct.gspca_dev* %91, i32 1)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*, i32) #1

declare dso_local i32 @bulk_w(%struct.gspca_dev*, i32, %struct.cmd*, i32) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
