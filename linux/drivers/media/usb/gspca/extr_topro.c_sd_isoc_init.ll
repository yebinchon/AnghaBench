; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_isoc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_isoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32, i64 }
%struct.sd = type { i64, i64 }

@sd_isoc_init.cx_sensor_init = internal constant [8 x %struct.cmd] [%struct.cmd { i32 136, i32 129 }, %struct.cmd { i32 134, i32 55 }, %struct.cmd { i32 135, i32 1 }, %struct.cmd { i32 131, i32 0 }, %struct.cmd { i32 132, i32 0 }, %struct.cmd { i32 130, i32 0 }, %struct.cmd { i32 133, i32 0 }, %struct.cmd { i32 129, i32 129 }], align 16
@sd_isoc_init.cx_bridge_init = internal constant [4 x %struct.cmd] [%struct.cmd { i32 77, i32 0 }, %struct.cmd { i32 76, i32 255 }, %struct.cmd { i32 78, i32 255 }, %struct.cmd { i32 79, i32 0 }], align 16
@sd_isoc_init.ov_sensor_init = internal constant [3 x %struct.cmd] [%struct.cmd { i32 16, i32 117 }, %struct.cmd { i32 118, i32 3 }, %struct.cmd zeroinitializer], align 16
@sd_isoc_init.ov_bridge_init = internal constant [2 x %struct.cmd] [%struct.cmd { i32 123, i32 144 }, %struct.cmd { i32 128, i32 135 }], align 16
@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@TP6800_R12_SIF_ADDR_S = common dso_local global i32 0, align 4
@color_null = common dso_local global i32 0, align 4
@TP6800_R78_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_isoc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_isoc_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %4, align 8
  %7 = load %struct.sd*, %struct.sd** %4, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BRIDGE_TP6800, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SENSOR_CX0342, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %22 = call i32 @reg_w(%struct.gspca_dev* %20, i32 %21, i32 32)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @reg_w(%struct.gspca_dev* %23, i32 128, i32 135)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([8 x %struct.cmd], [8 x %struct.cmd]* @sd_isoc_init.cx_sensor_init, i64 0, i64 0))
  %27 = call i32 @i2c_w_buf(%struct.gspca_dev* %25, %struct.cmd* getelementptr inbounds ([8 x %struct.cmd], [8 x %struct.cmd]* @sd_isoc_init.cx_sensor_init, i64 0, i64 0), i32 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @sd_isoc_init.cx_bridge_init, i64 0, i64 0))
  %30 = call i32 @reg_w_buf(%struct.gspca_dev* %28, %struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @sd_isoc_init.cx_bridge_init, i64 0, i64 0), i32 %29)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = load i32, i32* @color_null, align 4
  %33 = call i32 @bulk_w(%struct.gspca_dev* %31, i32 3, i32 %32, i32 4)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @reg_w(%struct.gspca_dev* %34, i32 89, i32 64)
  br label %48

36:                                               ; preds = %13
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = load i32, i32* @TP6800_R12_SIF_ADDR_S, align 4
  %39 = call i32 @reg_w(%struct.gspca_dev* %37, i32 %38, i32 33)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([3 x %struct.cmd], [3 x %struct.cmd]* @sd_isoc_init.ov_sensor_init, i64 0, i64 0))
  %42 = call i32 @i2c_w_buf(%struct.gspca_dev* %40, %struct.cmd* getelementptr inbounds ([3 x %struct.cmd], [3 x %struct.cmd]* @sd_isoc_init.ov_sensor_init, i64 0, i64 0), i32 %41)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %44 = call i32 @reg_r(%struct.gspca_dev* %43, i32 123)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([2 x %struct.cmd], [2 x %struct.cmd]* @sd_isoc_init.ov_bridge_init, i64 0, i64 0))
  %47 = call i32 @reg_w_buf(%struct.gspca_dev* %45, %struct.cmd* getelementptr inbounds ([2 x %struct.cmd], [2 x %struct.cmd]* @sd_isoc_init.ov_bridge_init, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %36, %19
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 1
  %57 = call i32 @reg_w(%struct.gspca_dev* %49, i32 %50, i32 %56)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %48, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @bulk_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
