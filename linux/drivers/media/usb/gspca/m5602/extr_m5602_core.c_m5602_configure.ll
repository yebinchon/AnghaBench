; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_core.c_m5602_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_core.c_m5602_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i64, i32* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32 }

@dump_bridge = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ALi m5602 webcam failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @m5602_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5602_configure(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  store %struct.cam* %12, %struct.cam** %7, align 8
  %13 = load i64, i64* @dump_bridge, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.sd*, %struct.sd** %6, align 8
  %17 = call i32 @m5602_dump_bridge(%struct.sd* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.sd*, %struct.sd** %6, align 8
  %20 = call i32 @m5602_probe_sensor(%struct.sd* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %33

25:                                               ; preds = %23
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %27 = call i32 @gspca_err(%struct.gspca_dev* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.cam*, %struct.cam** %7, align 8
  %29 = getelementptr inbounds %struct.cam, %struct.cam* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.cam*, %struct.cam** %7, align 8
  %31 = getelementptr inbounds %struct.cam, %struct.cam* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %24
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @m5602_dump_bridge(%struct.sd*) #1

declare dso_local i32 @m5602_probe_sensor(%struct.sd*) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
