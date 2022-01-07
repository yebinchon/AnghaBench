; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq905c.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq905c.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64*, %struct.cam }
%struct.cam = type { i32, i32, i32, i32 }
%struct.usb_device_id = type { i32, i32 }
%struct.sd = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SQ9050 camera detected (vid/pid 0x%04X:0x%04X)\0A\00", align 1
@SQ905C_GET_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Get version command failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Reading version command failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"SQ9050 ID string: %02x - %*ph\0A\00", align 1
@sq905c_mode = common dso_local global i32 0, align 4
@sq905c_dostream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.cam*, align 8
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 1
  store %struct.cam* %10, %struct.cam** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %7, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %14 = load i32, i32* @D_PROBE, align 4
  %15 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %16 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (%struct.gspca_dev*, i32, i8*, i64, i32, ...) @gspca_dbg(%struct.gspca_dev* %13, i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %21)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %24 = load i32, i32* @SQ905C_GET_ID, align 4
  %25 = call i32 @sq905c_command(%struct.gspca_dev* %23, i32 %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %30 = call i32 @gspca_err(%struct.gspca_dev* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %77

32:                                               ; preds = %2
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = call i32 @sq905c_read(%struct.gspca_dev* %33, i32 245, i32 0, i32 20)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %39 = call i32 @gspca_err(%struct.gspca_dev* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %32
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %43 = load i32, i32* @D_PROBE, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 14
  %53 = call i32 (%struct.gspca_dev*, i32, i8*, i64, i32, ...) @gspca_dbg(%struct.gspca_dev* %42, i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %48, i32 6, i64* %52)
  %54 = load i32, i32* @sq905c_mode, align 4
  %55 = load %struct.cam*, %struct.cam** %6, align 8
  %56 = getelementptr inbounds %struct.cam, %struct.cam* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cam*, %struct.cam** %6, align 8
  %58 = getelementptr inbounds %struct.cam, %struct.cam* %57, i32 0, i32 0
  store i32 2, i32* %58, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 15
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load %struct.cam*, %struct.cam** %6, align 8
  %67 = getelementptr inbounds %struct.cam, %struct.cam* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %41
  %69 = load %struct.cam*, %struct.cam** %6, align 8
  %70 = getelementptr inbounds %struct.cam, %struct.cam* %69, i32 0, i32 1
  store i32 32, i32* %70, align 4
  %71 = load %struct.cam*, %struct.cam** %6, align 8
  %72 = getelementptr inbounds %struct.cam, %struct.cam* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load %struct.sd*, %struct.sd** %7, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 0
  %75 = load i32, i32* @sq905c_dostream, align 4
  %76 = call i32 @INIT_WORK(i32* %74, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %68, %37, %28
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i64, i32, ...) #1

declare dso_local i32 @sq905c_command(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @sq905c_read(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
