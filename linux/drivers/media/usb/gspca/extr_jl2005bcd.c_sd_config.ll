; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jl2005bcd.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32, i8*, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32*, i32, i32 }

@cif_mode = common dso_local global i8* null, align 8
@vga_mode = common dso_local global i8* null, align 8
@jl2005c_dostream = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.cam*, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  store %struct.cam* %10, %struct.cam** %5, align 8
  %11 = load %struct.cam*, %struct.cam** %5, align 8
  %12 = getelementptr inbounds %struct.cam, %struct.cam* %11, i32 0, i32 0
  store i32 64, i32* %12, align 8
  %13 = load %struct.cam*, %struct.cam** %5, align 8
  %14 = getelementptr inbounds %struct.cam, %struct.cam* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = call i32 @jl2005c_get_firmware_id(%struct.gspca_dev* %15)
  %17 = load %struct.sd*, %struct.sd** %6, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 240
  %23 = icmp eq i32 %22, 64
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i8*, i8** @cif_mode, align 8
  %26 = load %struct.cam*, %struct.cam** %5, align 8
  %27 = getelementptr inbounds %struct.cam, %struct.cam* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @cif_mode, align 8
  %29 = call i8* @ARRAY_SIZE(i8* %28)
  %30 = load %struct.cam*, %struct.cam** %5, align 8
  %31 = getelementptr inbounds %struct.cam, %struct.cam* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.sd*, %struct.sd** %6, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  store i32 128, i32* %33, align 8
  br label %44

34:                                               ; preds = %2
  %35 = load i8*, i8** @vga_mode, align 8
  %36 = load %struct.cam*, %struct.cam** %5, align 8
  %37 = getelementptr inbounds %struct.cam, %struct.cam* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @vga_mode, align 8
  %39 = call i8* @ARRAY_SIZE(i8* %38)
  %40 = load %struct.cam*, %struct.cam** %5, align 8
  %41 = getelementptr inbounds %struct.cam, %struct.cam* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.sd*, %struct.sd** %6, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  store i32 512, i32* %43, align 8
  br label %44

44:                                               ; preds = %34, %24
  %45 = load %struct.sd*, %struct.sd** %6, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 2
  %47 = load i32, i32* @jl2005c_dostream, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @jl2005c_get_firmware_id(%struct.gspca_dev*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
