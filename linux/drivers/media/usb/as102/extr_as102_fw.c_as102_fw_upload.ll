; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_as102_fw_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_as102_fw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as10x_bus_adapter_t = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@dual_tuner = common dso_local global i64 0, align 8
@as102_dt_fw1 = common dso_local global i8* null, align 8
@as102_dt_fw2 = common dso_local global i8* null, align 8
@as102_st_fw1 = common dso_local global i8* null, align 8
@as102_st_fw2 = common dso_local global i8* null, align 8
@MAX_FW_PKT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: unable to locate firmware file: %s\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: error during firmware upload part1\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: firmware: %s loaded with success\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: error during firmware upload part2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as102_fw_upload(%struct.as10x_bus_adapter_t* %0) #0 {
  %2 = alloca %struct.as10x_bus_adapter_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_device*, align 8
  store %struct.as10x_bus_adapter_t* %0, %struct.as10x_bus_adapter_t** %2, align 8
  %9 = load i32, i32* @EFAULT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  store %struct.firmware* null, %struct.firmware** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %2, align 8
  %12 = getelementptr inbounds %struct.as10x_bus_adapter_t, %struct.as10x_bus_adapter_t* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %8, align 8
  %14 = load i64, i64* @dual_tuner, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** @as102_dt_fw1, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** @as102_dt_fw2, align 8
  store i8* %18, i8** %7, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** @as102_st_fw1, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** @as102_st_fw2, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @MAX_FW_PKT_SIZE, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kzalloc(i32 %23, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = call i32 @request_firmware(%struct.firmware** %4, i8* %32, i32* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @DRIVER_NAME, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %40)
  br label %83

42:                                               ; preds = %31
  %43 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %2, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.firmware*, %struct.firmware** %4, align 8
  %46 = call i32 @as102_firmware_upload(%struct.as10x_bus_adapter_t* %43, i8* %44, %struct.firmware* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @DRIVER_NAME, align 4
  %51 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %83

52:                                               ; preds = %42
  %53 = load i32, i32* @DRIVER_NAME, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %53, i8* %54)
  %56 = load %struct.firmware*, %struct.firmware** %4, align 8
  %57 = call i32 @release_firmware(%struct.firmware* %56)
  store %struct.firmware* null, %struct.firmware** %4, align 8
  %58 = call i32 @mdelay(i32 100)
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %61 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %60, i32 0, i32 0
  %62 = call i32 @request_firmware(%struct.firmware** %4, i8* %59, i32* %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i32, i32* @DRIVER_NAME, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %66, i8* %67)
  br label %83

69:                                               ; preds = %52
  %70 = load %struct.as10x_bus_adapter_t*, %struct.as10x_bus_adapter_t** %2, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.firmware*, %struct.firmware** %4, align 8
  %73 = call i32 @as102_firmware_upload(%struct.as10x_bus_adapter_t* %70, i8* %71, %struct.firmware* %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @DRIVER_NAME, align 4
  %78 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  br label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @DRIVER_NAME, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %79, %76, %65, %49, %38, %28
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load %struct.firmware*, %struct.firmware** %4, align 8
  %87 = call i32 @release_firmware(%struct.firmware* %86)
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @as102_firmware_upload(%struct.as10x_bus_adapter_t*, i8*, %struct.firmware*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
