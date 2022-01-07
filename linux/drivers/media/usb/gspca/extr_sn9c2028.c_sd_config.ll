; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i8*, i8* }
%struct.usb_device_id = type { i32, i32 }
%struct.sd = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SN9C2028 camera detected (vid/pid 0x%04X:0x%04X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Genius Smart 300 camera\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Genius Videocam Live v2\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"DC31VC\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Spy camera\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"CIF camera\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Mini-Shotz ms-350 camera\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Vivitar 3350b type camera\0A\00", align 1
@V4L2_IN_ST_VFLIP = common dso_local global i32 0, align 4
@V4L2_IN_ST_HFLIP = common dso_local global i32 0, align 4
@cif_mode = common dso_local global i8* null, align 8
@vga_mode = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  store %struct.cam* %10, %struct.cam** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = load i32, i32* @D_PROBE, align 4
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %17 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %11, i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sd*, %struct.sd** %5, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sd*, %struct.sd** %5, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %61 [
    i32 28677, label %28
    i32 28675, label %32
    i32 32768, label %36
    i32 32769, label %40
    i32 32771, label %44
    i32 32776, label %48
    i32 32778, label %52
  ]

28:                                               ; preds = %2
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = load i32, i32* @D_PROBE, align 4
  %31 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %61

32:                                               ; preds = %2
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = load i32, i32* @D_PROBE, align 4
  %35 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %33, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %61

36:                                               ; preds = %2
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = load i32, i32* @D_PROBE, align 4
  %39 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %37, i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %61

40:                                               ; preds = %2
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = load i32, i32* @D_PROBE, align 4
  %43 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %41, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %61

44:                                               ; preds = %2
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %46 = load i32, i32* @D_PROBE, align 4
  %47 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %45, i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %61

48:                                               ; preds = %2
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = load i32, i32* @D_PROBE, align 4
  %51 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %49, i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %61

52:                                               ; preds = %2
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %54 = load i32, i32* @D_PROBE, align 4
  %55 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %53, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32, i32* @V4L2_IN_ST_VFLIP, align 4
  %57 = load i32, i32* @V4L2_IN_ST_HFLIP, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.cam*, %struct.cam** %6, align 8
  %60 = getelementptr inbounds %struct.cam, %struct.cam* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %2, %52, %48, %44, %40, %36, %32, %28
  %62 = load %struct.sd*, %struct.sd** %5, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %73 [
    i32 32768, label %65
    i32 32769, label %65
    i32 32771, label %65
  ]

65:                                               ; preds = %61, %61, %61
  %66 = load i8*, i8** @cif_mode, align 8
  %67 = load %struct.cam*, %struct.cam** %6, align 8
  %68 = getelementptr inbounds %struct.cam, %struct.cam* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @cif_mode, align 8
  %70 = call i8* @ARRAY_SIZE(i8* %69)
  %71 = load %struct.cam*, %struct.cam** %6, align 8
  %72 = getelementptr inbounds %struct.cam, %struct.cam* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %81

73:                                               ; preds = %61
  %74 = load i8*, i8** @vga_mode, align 8
  %75 = load %struct.cam*, %struct.cam** %6, align 8
  %76 = getelementptr inbounds %struct.cam, %struct.cam* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** @vga_mode, align 8
  %78 = call i8* @ARRAY_SIZE(i8* %77)
  %79 = load %struct.cam*, %struct.cam** %6, align 8
  %80 = getelementptr inbounds %struct.cam, %struct.cam* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %73, %65
  ret i32 0
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
