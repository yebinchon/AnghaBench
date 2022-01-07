; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"FW Version = %i.%02i.%i (0x%x)  Build %4i/%02i/%02i\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get FW version\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"FPGA Version = %i\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get FPGA version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_usb_device*)* @gp8psk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp8psk_info(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca %struct.dvb_usb_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [6 x i64], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %2, align 8
  %5 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %6 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 0
  %7 = call i32 @gp8psk_get_fw_version(%struct.dvb_usb_device* %5, i64* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 2
  %11 = load i64, i64* %10, align 16
  %12 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 0
  %15 = load i64, i64* %14, align 16
  %16 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 0
  %17 = call i32 @GP8PSK_FW_VERS(i64* %16)
  %18 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 5
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 2000, %19
  %21 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 4
  %22 = load i64, i64* %21, align 16
  %23 = getelementptr inbounds [6 x i64], [6 x i64]* %4, i64 0, i64 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %13, i64 %15, i32 %17, i64 %20, i64 %22, i64 %24)
  br label %28

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %9
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %2, align 8
  %30 = call i32 @gp8psk_get_fpga_version(%struct.dvb_usb_device* %29, i64* %3)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %3, align 8
  %34 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %37

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @gp8psk_get_fw_version(%struct.dvb_usb_device*, i64*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @GP8PSK_FW_VERS(i64*) #1

declare dso_local i32 @gp8psk_get_fpga_version(%struct.dvb_usb_device*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
