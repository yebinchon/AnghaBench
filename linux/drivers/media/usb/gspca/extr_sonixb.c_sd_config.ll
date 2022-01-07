; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32*, %struct.cam }
%struct.cam = type { i32, i8*, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@F_SIF = common dso_local global i32 0, align 4
@vga_mode = common dso_local global i8* null, align 8
@sif_mode = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = call i32 @reg_r(%struct.gspca_dev* %10, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = load %struct.sd*, %struct.sd** %6, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.sd*, %struct.sd** %6, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 1
  store %struct.cam* %35, %struct.cam** %7, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %37 = load %struct.sd*, %struct.sd** %6, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @F_SIF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %21
  %48 = load i8*, i8** @vga_mode, align 8
  %49 = load %struct.cam*, %struct.cam** %7, align 8
  %50 = getelementptr inbounds %struct.cam, %struct.cam* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @vga_mode, align 8
  %52 = call i8* @ARRAY_SIZE(i8* %51)
  %53 = load %struct.cam*, %struct.cam** %7, align 8
  %54 = getelementptr inbounds %struct.cam, %struct.cam* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %63

55:                                               ; preds = %21
  %56 = load i8*, i8** @sif_mode, align 8
  %57 = load %struct.cam*, %struct.cam** %7, align 8
  %58 = getelementptr inbounds %struct.cam, %struct.cam* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @sif_mode, align 8
  %60 = call i8* @ARRAY_SIZE(i8* %59)
  %61 = load %struct.cam*, %struct.cam** %7, align 8
  %62 = getelementptr inbounds %struct.cam, %struct.cam* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %55, %47
  %64 = load %struct.cam*, %struct.cam** %7, align 8
  %65 = getelementptr inbounds %struct.cam, %struct.cam* %64, i32 0, i32 0
  store i32 36, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %18
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
