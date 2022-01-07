; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/stv06xx/extr_stv06xx.c_stv06xx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.sd*)* }
%struct.sd = type { %struct.TYPE_6__*, i32 }
%struct.gspca_dev = type { i32* }
%struct.usb_device_id = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Configuring camera\0A\00", align 1
@sd_desc = common dso_local global i32 0, align 4
@dump_bridge = common dso_local global i64 0, align 8
@stv06xx_sensor_st6422 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_vv6410 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_hdcs1x00 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_hdcs1020 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stv06xx_sensor_pb0100 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @stv06xx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv06xx_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = load i32, i32* @D_PROBE, align 4
  %11 = call i32 @gspca_dbg(%struct.gspca_dev* %9, i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sd*, %struct.sd** %6, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 0
  store i32* @sd_desc, i32** %18, align 8
  %19 = load i64, i64* @dump_bridge, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.sd*, %struct.sd** %6, align 8
  %23 = call i32 @stv06xx_dump_bridge(%struct.sd* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.sd*, %struct.sd** %6, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_st6422, %struct.TYPE_6__** %26, align 8
  %27 = load %struct.sd*, %struct.sd** %6, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %30, align 8
  %32 = load %struct.sd*, %struct.sd** %6, align 8
  %33 = call i32 %31(%struct.sd* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %89

36:                                               ; preds = %24
  %37 = load %struct.sd*, %struct.sd** %6, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_vv6410, %struct.TYPE_6__** %38, align 8
  %39 = load %struct.sd*, %struct.sd** %6, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %42, align 8
  %44 = load %struct.sd*, %struct.sd** %6, align 8
  %45 = call i32 %43(%struct.sd* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %89

48:                                               ; preds = %36
  %49 = load %struct.sd*, %struct.sd** %6, align 8
  %50 = getelementptr inbounds %struct.sd, %struct.sd* %49, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_hdcs1x00, %struct.TYPE_6__** %50, align 8
  %51 = load %struct.sd*, %struct.sd** %6, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %54, align 8
  %56 = load %struct.sd*, %struct.sd** %6, align 8
  %57 = call i32 %55(%struct.sd* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %89

60:                                               ; preds = %48
  %61 = load %struct.sd*, %struct.sd** %6, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_hdcs1020, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.sd*, %struct.sd** %6, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %66, align 8
  %68 = load %struct.sd*, %struct.sd** %6, align 8
  %69 = call i32 %67(%struct.sd* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %89

72:                                               ; preds = %60
  %73 = load %struct.sd*, %struct.sd** %6, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 0
  store %struct.TYPE_6__* @stv06xx_sensor_pb0100, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.sd*, %struct.sd** %6, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32 (%struct.sd*)*, i32 (%struct.sd*)** %78, align 8
  %80 = load %struct.sd*, %struct.sd** %6, align 8
  %81 = call i32 %79(%struct.sd* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %89

84:                                               ; preds = %72
  %85 = load %struct.sd*, %struct.sd** %6, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %86, align 8
  %87 = load i32, i32* @ENODEV, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %84, %83, %71, %59, %47, %35
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @stv06xx_dump_bridge(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
