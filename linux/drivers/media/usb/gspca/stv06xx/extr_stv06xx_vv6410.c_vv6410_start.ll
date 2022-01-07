; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx_vv6410.c_vv6410_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gspca_dev = type { i32 }

@VV6410_SUBSAMPLE = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Enabling subsampling\0A\00", align 1
@STV_Y_CTRL = common dso_local global i32 0, align 4
@STV_X_CTRL = common dso_local global i32 0, align 4
@STV_SCAN_RATE = common dso_local global i32 0, align 4
@STV_LED_CTRL = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@VV6410_SETUP0 = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Starting stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @vv6410_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vv6410_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca %struct.cam*, align 8
  %7 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = bitcast %struct.sd* %8 to %struct.gspca_dev*
  store %struct.gspca_dev* %9, %struct.gspca_dev** %5, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.cam* %12, %struct.cam** %6, align 8
  %13 = load %struct.cam*, %struct.cam** %6, align 8
  %14 = getelementptr inbounds %struct.cam, %struct.cam* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @VV6410_SUBSAMPLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %1
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %29 = load i32, i32* @D_CONF, align 4
  %30 = call i32 @gspca_dbg(%struct.gspca_dev* %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = load i32, i32* @STV_Y_CTRL, align 4
  %33 = call i32 @stv06xx_write_bridge(%struct.sd* %31, i32 %32, i32 2)
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = load i32, i32* @STV_X_CTRL, align 4
  %36 = call i32 @stv06xx_write_bridge(%struct.sd* %34, i32 %35, i32 6)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = load i32, i32* @STV_SCAN_RATE, align 4
  %39 = call i32 @stv06xx_write_bridge(%struct.sd* %37, i32 %38, i32 16)
  br label %50

40:                                               ; preds = %1
  %41 = load %struct.sd*, %struct.sd** %3, align 8
  %42 = load i32, i32* @STV_Y_CTRL, align 4
  %43 = call i32 @stv06xx_write_bridge(%struct.sd* %41, i32 %42, i32 1)
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = load i32, i32* @STV_X_CTRL, align 4
  %46 = call i32 @stv06xx_write_bridge(%struct.sd* %44, i32 %45, i32 10)
  %47 = load %struct.sd*, %struct.sd** %3, align 8
  %48 = load i32, i32* @STV_SCAN_RATE, align 4
  %49 = call i32 @stv06xx_write_bridge(%struct.sd* %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %40, %27
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = load i32, i32* @STV_LED_CTRL, align 4
  %53 = load i32, i32* @LED_ON, align 4
  %54 = call i32 @stv06xx_write_bridge(%struct.sd* %51, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %50
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = load i32, i32* @VV6410_SETUP0, align 4
  %62 = call i32 @stv06xx_write_sensor(%struct.sd* %60, i32 %61, i32 0)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %71

67:                                               ; preds = %59
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %69 = load i32, i32* @D_STREAM, align 4
  %70 = call i32 @gspca_dbg(%struct.gspca_dev* %68, i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %65, %57
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @stv06xx_write_sensor(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
