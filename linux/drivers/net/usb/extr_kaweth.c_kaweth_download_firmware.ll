; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Firmware request failed\0A\00", align 1
@KAWETH_FIRMWARE_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Firmware too big: %zu\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"High: %i, Low:%i\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Downloading firmware at %p to kaweth device at %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Firmware length: %d\0A\00", align 1
@KAWETH_COMMAND_SCAN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@KAWETH_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i8*, i8*, i8*)* @kaweth_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_download_firmware(%struct.kaweth_device* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kaweth_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %15 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.firmware** %10, i8* %13, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %23 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %133

28:                                               ; preds = %4
  %29 = load %struct.firmware*, %struct.firmware** %10, align 8
  %30 = getelementptr inbounds %struct.firmware, %struct.firmware* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KAWETH_FIRMWARE_BUF_SIZE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %36 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.firmware*, %struct.firmware** %10, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.firmware*, %struct.firmware** %10, align 8
  %44 = call i32 @release_firmware(%struct.firmware* %43)
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %133

47:                                               ; preds = %28
  %48 = load %struct.firmware*, %struct.firmware** %10, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %52 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.firmware*, %struct.firmware** %10, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.firmware*, %struct.firmware** %10, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memcpy(i32* %53, i32 %56, i32 %59)
  %61 = load %struct.firmware*, %struct.firmware** %10, align 8
  %62 = call i32 @release_firmware(%struct.firmware* %61)
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 255
  %65 = sub nsw i32 %64, 7
  %66 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %67 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = ashr i32 %70, 8
  %72 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %73 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %71, i32* %75, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %79 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32 %77, i32* %81, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %85 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  store i32 %83, i32* %87, align 4
  %88 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %89 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %92 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %97 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %100)
  %102 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %103 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %106 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %109 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %104, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32* %107, %struct.kaweth_device* %108)
  %110 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %111 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %116 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %117 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = call i32 @usb_sndctrlpipe(%struct.TYPE_4__* %118, i32 0)
  %120 = load i32, i32* @KAWETH_COMMAND_SCAN, align 4
  %121 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %122 = load i32, i32* @USB_DIR_OUT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.kaweth_device*, %struct.kaweth_device** %6, align 8
  %127 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = bitcast i32* %128 to i8*
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @KAWETH_CONTROL_TIMEOUT, align 4
  %132 = call i32 @kaweth_control(%struct.kaweth_device* %115, i32 %119, i32 %120, i32 %125, i32 0, i32 0, i8* %129, i32 %130, i32 %131)
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %47, %34, %21
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @kaweth_control(%struct.kaweth_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
