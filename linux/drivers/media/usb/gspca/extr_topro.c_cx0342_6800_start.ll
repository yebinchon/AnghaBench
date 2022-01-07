; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_cx0342_6800_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_cx0342_6800_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32, i32 }
%struct.sd = type { i64, i32, i32 }

@cx0342_6800_start.reg_init = internal constant [29 x %struct.cmd] [%struct.cmd { i32 153, i32 159 }, %struct.cmd { i32 154, i32 64 }, %struct.cmd { i32 156, i32 0 }, %struct.cmd { i32 135, i32 0 }, %struct.cmd { i32 134, i32 0 }, %struct.cmd { i32 133, i32 255 }, %struct.cmd { i32 132, i32 3 }, %struct.cmd { i32 131, i32 7 }, %struct.cmd { i32 130, i32 64 }, %struct.cmd { i32 128, i32 64 }, %struct.cmd { i32 151, i32 23 }, %struct.cmd { i32 150, i32 24 }, %struct.cmd { i32 143, i32 0 }, %struct.cmd { i32 142, i32 0 }, %struct.cmd { i32 141, i32 0 }, %struct.cmd { i32 140, i32 0 }, %struct.cmd { i32 139, i32 0 }, %struct.cmd { i32 138, i32 0 }, %struct.cmd { i32 137, i32 0 }, %struct.cmd { i32 136, i32 0 }, %struct.cmd { i32 152, i32 3 }, %struct.cmd { i32 149, i32 11 }, %struct.cmd { i32 148, i32 138 }, %struct.cmd { i32 147, i32 2 }, %struct.cmd { i32 146, i32 14 }, %struct.cmd { i32 145, i32 244 }, %struct.cmd { i32 144, i32 1 }, %struct.cmd { i32 129, i32 0 }, %struct.cmd { i32 155, i32 32 }], align 16
@cx0342_6800_start.sensor_init = internal constant [29 x %struct.cmd] [%struct.cmd { i32 169, i32 7 }, %struct.cmd { i32 182, i32 88 }, %struct.cmd { i32 175, i32 22 }, %struct.cmd { i32 165, i32 22 }, %struct.cmd { i32 167, i32 192 }, %struct.cmd { i32 168, i32 3 }, %struct.cmd { i32 163, i32 255 }, %struct.cmd { i32 164, i32 7 }, %struct.cmd { i32 173, i32 255 }, %struct.cmd { i32 174, i32 7 }, %struct.cmd { i32 161, i32 92 }, %struct.cmd { i32 162, i32 1 }, %struct.cmd { i32 179, i32 252 }, %struct.cmd { i32 180, i32 3 }, %struct.cmd { i32 177, i32 0 }, %struct.cmd { i32 178, i32 0 }, %struct.cmd { i32 158, i32 64 }, %struct.cmd { i32 176, i32 1 }, %struct.cmd { i32 181, i32 0 }, %struct.cmd { i32 158, i32 2 }, %struct.cmd { i32 172, i32 5 }, %struct.cmd { i32 184, i32 0 }, %struct.cmd { i32 183, i32 0 }, %struct.cmd { i32 170, i32 1 }, %struct.cmd { i32 157, i32 11 }, %struct.cmd { i32 166, i32 11 }, %struct.cmd { i32 171, i32 7 }, %struct.cmd { i32 159, i32 64 }, %struct.cmd { i32 160, i32 2 }], align 16
@cx0342_timing_seq = common dso_local global %struct.cmd* null, align 8
@CX0342_EXPO_LINE_H = common dso_local global i32 0, align 4
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @cx0342_6800_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx0342_6800_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([29 x %struct.cmd], [29 x %struct.cmd]* @cx0342_6800_start.reg_init, i64 0, i64 0))
  %8 = call i32 @reg_w_buf(%struct.gspca_dev* %6, %struct.cmd* getelementptr inbounds ([29 x %struct.cmd], [29 x %struct.cmd]* @cx0342_6800_start.reg_init, i64 0, i64 0), i32 %7)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([29 x %struct.cmd], [29 x %struct.cmd]* @cx0342_6800_start.sensor_init, i64 0, i64 0))
  %11 = call i32 @i2c_w_buf(%struct.gspca_dev* %9, %struct.cmd* getelementptr inbounds ([29 x %struct.cmd], [29 x %struct.cmd]* @cx0342_6800_start.sensor_init, i64 0, i64 0), i32 %10)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = load %struct.cmd*, %struct.cmd** @cx0342_timing_seq, align 8
  %14 = load %struct.cmd*, %struct.cmd** @cx0342_timing_seq, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.cmd* %14)
  %16 = call i32 @i2c_w_buf(%struct.gspca_dev* %12, %struct.cmd* %13, i32 %15)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @reg_w(%struct.gspca_dev* %17, i32 130, i32 16)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @reg_w(%struct.gspca_dev* %19, i32 131, i32 0)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = load i32, i32* @CX0342_EXPO_LINE_H, align 4
  %23 = call i32 @i2c_w(%struct.gspca_dev* %21, i32 %22, i32 0)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = call i32 @i2c_w(%struct.gspca_dev* %24, i32 158, i32 1)
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SENSOR_CX0342, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %1
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @v4l2_ctrl_g_ctrl(i32 %35)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @v4l2_ctrl_g_ctrl(i32 %39)
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @v4l2_ctrl_g_ctrl(i32 %43)
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @v4l2_ctrl_g_ctrl(i32 %47)
  %49 = call i32 @setexposure(%struct.gspca_dev* %32, i32 %36, i32 %40, i32 %44, i32 %48)
  br label %61

50:                                               ; preds = %1
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @v4l2_ctrl_g_ctrl(i32 %54)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @v4l2_ctrl_g_ctrl(i32 %58)
  %60 = call i32 @setexposure(%struct.gspca_dev* %51, i32 %55, i32 %59, i32 0, i32 0)
  br label %61

61:                                               ; preds = %50, %31
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = call i32 @set_led(%struct.gspca_dev* %62, i32 1)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @set_resolution(%struct.gspca_dev* %64)
  ret void
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @i2c_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

declare dso_local i32 @set_resolution(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
