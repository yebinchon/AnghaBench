; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca508.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca508.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i64 }
%struct.sd = type { i64 }

@sd_config.init_data_tb = internal global [6 x [2 x i32]*] [[2 x i32]* inttoptr (i64 129 to [2 x i32]*), [2 x i32]* inttoptr (i64 130 to [2 x i32]*), [2 x i32]* inttoptr (i64 131 to [2 x i32]*), [2 x i32]* inttoptr (i64 128 to [2 x i32]*), [2 x i32]* inttoptr (i64 128 to [2 x i32]*), [2 x i32]* inttoptr (i64 132 to [2 x i32]*)], align 16
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Webcam Vendor ID: 0x%02x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Webcam Product ID: 0x%02x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Window 1 average luminance: %d\0A\00", align 1
@sif_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.cam*, align 8
  %7 = alloca [2 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %5, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @reg_read(%struct.gspca_dev* %12, i32 33028)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @reg_read(%struct.gspca_dev* %14, i32 33029)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = load i32, i32* @D_PROBE, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %16, i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = call i32 @reg_read(%struct.gspca_dev* %21, i32 33030)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @reg_read(%struct.gspca_dev* %23, i32 33031)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = load i32, i32* @D_PROBE, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = call i32 @reg_read(%struct.gspca_dev* %30, i32 34337)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = load i32, i32* @D_PROBE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %32, i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 0
  store %struct.cam* %37, %struct.cam** %6, align 8
  %38 = load i32, i32* @sif_mode, align 4
  %39 = load %struct.cam*, %struct.cam** %6, align 8
  %40 = getelementptr inbounds %struct.cam, %struct.cam* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @sif_mode, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = load %struct.cam*, %struct.cam** %6, align 8
  %44 = getelementptr inbounds %struct.cam, %struct.cam* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %46 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.sd*, %struct.sd** %5, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.sd*, %struct.sd** %5, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [6 x [2 x i32]*], [6 x [2 x i32]*]* @sd_config.init_data_tb, i64 0, i64 %52
  %54 = load [2 x i32]*, [2 x i32]** %53, align 8
  store [2 x i32]* %54, [2 x i32]** %7, align 8
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = load [2 x i32]*, [2 x i32]** %7, align 8
  %57 = bitcast [2 x i32]* %56 to i32**
  %58 = call i32 @write_vector(%struct.gspca_dev* %55, i32** %57)
  ret i32 %58
}

declare dso_local i32 @reg_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
