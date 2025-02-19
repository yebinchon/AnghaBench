; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vicam.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vicam.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32, i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32 }

@vicam_mode = common dso_local global i32 0, align 4
@vicam_dostream = common dso_local global i32 0, align 4
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
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 0
  store %struct.cam* %8, %struct.cam** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load %struct.cam*, %struct.cam** %5, align 8
  %12 = getelementptr inbounds %struct.cam, %struct.cam* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.cam*, %struct.cam** %5, align 8
  %14 = getelementptr inbounds %struct.cam, %struct.cam* %13, i32 0, i32 1
  store i32 64, i32* %14, align 4
  %15 = load i32, i32* @vicam_mode, align 4
  %16 = load %struct.cam*, %struct.cam** %5, align 8
  %17 = getelementptr inbounds %struct.cam, %struct.cam* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @vicam_mode, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load %struct.cam*, %struct.cam** %5, align 8
  %21 = getelementptr inbounds %struct.cam, %struct.cam* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sd*, %struct.sd** %6, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i32, i32* @vicam_dostream, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
