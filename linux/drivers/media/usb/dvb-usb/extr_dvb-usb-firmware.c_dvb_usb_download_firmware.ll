; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-firmware.c_dvb_usb_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-firmware.c_dvb_usb_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.dvb_usb_device_properties = type { i32, i32 (%struct.usb_device*, %struct.firmware*)*, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [119 x i8] c"did not find the firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"downloading firmware from file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"BUG: driver didn't specified a download_firmware-callback, although it claims to have a DEVICE_SPECIFIC one.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_download_firmware(%struct.usb_device* %0, %struct.dvb_usb_device_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.dvb_usb_device_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %5, align 8
  store %struct.firmware* null, %struct.firmware** %7, align 8
  %8 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0
  %13 = call i32 @request_firmware(%struct.firmware** %7, i32 %10, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %28 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %54 [
    i32 131, label %30
    i32 130, label %30
    i32 129, label %30
    i32 128, label %37
  ]

30:                                               ; preds = %22, %22, %22
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = load %struct.firmware*, %struct.firmware** %7, align 8
  %33 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @usb_cypress_load_firmware(%struct.usb_device* %31, %struct.firmware* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %57

37:                                               ; preds = %22
  %38 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %38, i32 0, i32 1
  %40 = load i32 (%struct.usb_device*, %struct.firmware*)*, i32 (%struct.usb_device*, %struct.firmware*)** %39, align 8
  %41 = icmp ne i32 (%struct.usb_device*, %struct.firmware*)* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %43, i32 0, i32 1
  %45 = load i32 (%struct.usb_device*, %struct.firmware*)*, i32 (%struct.usb_device*, %struct.firmware*)** %44, align 8
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = load %struct.firmware*, %struct.firmware** %7, align 8
  %48 = call i32 %45(%struct.usb_device* %46, %struct.firmware* %47)
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %37
  %50 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %42
  br label %57

54:                                               ; preds = %22
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %53, %30
  %58 = load %struct.firmware*, %struct.firmware** %7, align 8
  %59 = call i32 @release_firmware(%struct.firmware* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @usb_cypress_load_firmware(%struct.usb_device*, %struct.firmware*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
