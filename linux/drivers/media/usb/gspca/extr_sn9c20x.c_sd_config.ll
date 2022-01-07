; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i8*, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@sxga_mode = common dso_local global i8* null, align 8
@mono_mode = common dso_local global i8* null, align 8
@vga_mode = common dso_local global i8* null, align 8
@qual_upd = common dso_local global i32 0, align 4
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
  %11 = load %struct.cam*, %struct.cam** %6, align 8
  %12 = getelementptr inbounds %struct.cam, %struct.cam* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 8
  %17 = load %struct.sd*, %struct.sd** %5, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %25 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = load %struct.sd*, %struct.sd** %5, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sd*, %struct.sd** %5, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 3
  store i32 128, i32* %31, align 4
  %32 = load %struct.sd*, %struct.sd** %5, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %54 [
    i32 130, label %35
    i32 131, label %35
    i32 129, label %35
    i32 128, label %35
    i32 132, label %43
    i32 133, label %51
  ]

35:                                               ; preds = %2, %2, %2, %2
  %36 = load i8*, i8** @sxga_mode, align 8
  %37 = load %struct.cam*, %struct.cam** %6, align 8
  %38 = getelementptr inbounds %struct.cam, %struct.cam* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** @sxga_mode, align 8
  %40 = call i8* @ARRAY_SIZE(i8* %39)
  %41 = load %struct.cam*, %struct.cam** %6, align 8
  %42 = getelementptr inbounds %struct.cam, %struct.cam* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %62

43:                                               ; preds = %2
  %44 = load i8*, i8** @mono_mode, align 8
  %45 = load %struct.cam*, %struct.cam** %6, align 8
  %46 = getelementptr inbounds %struct.cam, %struct.cam* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @mono_mode, align 8
  %48 = call i8* @ARRAY_SIZE(i8* %47)
  %49 = load %struct.cam*, %struct.cam** %6, align 8
  %50 = getelementptr inbounds %struct.cam, %struct.cam* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %62

51:                                               ; preds = %2
  %52 = load %struct.sd*, %struct.sd** %5, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 3
  store i32 129, i32* %53, align 4
  br label %54

54:                                               ; preds = %2, %51
  %55 = load i8*, i8** @vga_mode, align 8
  %56 = load %struct.cam*, %struct.cam** %6, align 8
  %57 = getelementptr inbounds %struct.cam, %struct.cam* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** @vga_mode, align 8
  %59 = call i8* @ARRAY_SIZE(i8* %58)
  %60 = load %struct.cam*, %struct.cam** %6, align 8
  %61 = getelementptr inbounds %struct.cam, %struct.cam* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %54, %43, %35
  %63 = load %struct.sd*, %struct.sd** %5, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.sd*, %struct.sd** %5, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.sd*, %struct.sd** %5, align 8
  %68 = getelementptr inbounds %struct.sd, %struct.sd* %67, i32 0, i32 4
  store i32 16, i32* %68, align 8
  %69 = load %struct.sd*, %struct.sd** %5, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 5
  %71 = load i32, i32* @qual_upd, align 4
  %72 = call i32 @INIT_WORK(i32* %70, i32 %71)
  ret i32 0
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
