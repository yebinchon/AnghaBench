; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i32, i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Pixart Sensor ID 0x%02X Chips ID 0x%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error invalid sensor ID!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"Pixart PAC207BCA Image Processor and Control Chip detected (vid/pid 0x%04X:0x%04X)\0A\00", align 1
@sif_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.cam*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = call i32 @pac207_read_reg(%struct.gspca_dev* %8, i32 0)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = call i32 @pac207_read_reg(%struct.gspca_dev* %11, i32 1)
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  %17 = shl i32 %16, 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 240
  %21 = ashr i32 %20, 4
  %22 = or i32 %17, %21
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %29 = load i32, i32* @D_PROBE, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %28, i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33)
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 39
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = load i32, i32* @D_PROBE, align 4
  %41 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %39, i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %2
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = load i32, i32* @D_PROBE, align 4
  %47 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %45, i32 %46, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 0
  store %struct.cam* %55, %struct.cam** %6, align 8
  %56 = load i32, i32* @sif_mode, align 4
  %57 = load %struct.cam*, %struct.cam** %6, align 8
  %58 = getelementptr inbounds %struct.cam, %struct.cam* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @sif_mode, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = load %struct.cam*, %struct.cam** %6, align 8
  %62 = getelementptr inbounds %struct.cam, %struct.cam* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %44, %38
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @pac207_read_reg(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
