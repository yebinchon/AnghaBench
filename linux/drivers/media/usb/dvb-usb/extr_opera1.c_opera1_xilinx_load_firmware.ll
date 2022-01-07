; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_xilinx_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_xilinx_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"start downloading fpga firmware %s\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"did not find the firmware file '%s'. You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@OPERA_READ_MSG = common dso_local global i32 0, align 4
@OPERA_WRITE_MSG = common dso_local global i32 0, align 4
@OPERA_WRITE_FX2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error while transferring firmware\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"could not restart the USB controller CPU.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i8*)* @opera1_xilinx_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opera1_xilinx_load_firmware(%struct.usb_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.firmware* null, %struct.firmware** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 40, i32* %11, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 0
  %20 = call i32 @request_firmware(%struct.firmware** %6, i8* %17, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %113

26:                                               ; preds = %2
  %27 = load %struct.firmware*, %struct.firmware** %6, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kmalloc(i32 %29, i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = load i32, i32* @OPERA_READ_MSG, align 4
  %34 = call i32 @opera1_xilinx_rw(%struct.usb_device* %32, i32 188, i32 0, i32* %12, i32 1, i32 %33)
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %106

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 103
  br i1 %39, label %40, label %106

40:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.firmware*, %struct.firmware** %6, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.firmware*, %struct.firmware** %6, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32* %41, i32 %44, i32 %47)
  %49 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %50 = load i32, i32* @OPERA_WRITE_MSG, align 4
  %51 = call i32 @opera1_xilinx_rw(%struct.usb_device* %49, i32 188, i32 170, i32* %14, i32 1, i32 %50)
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %89, %40
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.firmware*, %struct.firmware** %6, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %52
  %59 = load %struct.firmware*, %struct.firmware** %6, align 8
  %60 = getelementptr inbounds %struct.firmware, %struct.firmware* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load %struct.firmware*, %struct.firmware** %6, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %66, %58
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32* %76, i32** %7, align 8
  %77 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %78 = load i32, i32* @OPERA_WRITE_FX2, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @OPERA_WRITE_MSG, align 4
  %82 = call i32 @opera1_xilinx_rw(%struct.usb_device* %77, i32 %78, i32 0, i32* %79, i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %93

89:                                               ; preds = %72
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %10, align 4
  br label %52

93:                                               ; preds = %85, %52
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %98 = load i32, i32* @OPERA_WRITE_MSG, align 4
  %99 = call i32 @opera1_xilinx_rw(%struct.usb_device* %97, i32 160, i32 58880, i32* %13, i32 1, i32 %98)
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %93
  %102 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %37, %26
  br label %107

107:                                              ; preds = %106
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @kfree(i32* %108)
  %110 = load %struct.firmware*, %struct.firmware** %6, align 8
  %111 = call i32 @release_firmware(%struct.firmware* %110)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %22
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @info(i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @opera1_xilinx_rw(%struct.usb_device*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
