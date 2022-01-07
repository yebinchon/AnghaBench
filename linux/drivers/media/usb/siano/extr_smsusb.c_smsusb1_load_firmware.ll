; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb1_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb1_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DEVICE_MODE_DVBT = common dso_local global i32 0, align 4
@DEVICE_MODE_DVBT_BDA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid firmware id specified %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"failed to open '%s' mode %d, trying again with default firmware\0A\00", align 1
@smsusb1_fw_lkup = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to open '%s' mode %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"sent %zu(%d) bytes, rc %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to allocate firmware buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"read FW %s, size=%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32)* @smsusb1_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsusb1_load_firmware(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_2__* @sms_get_board(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DEVICE_MODE_DVBT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DEVICE_MODE_DVBT_BDA, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %112

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @sms_get_fw_name(i32 %34, i32 %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %39 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %38, i32 0, i32 0
  %40 = call i32 @request_firmware(%struct.firmware** %8, i8* %37, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %33
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i8**, i8*** @smsusb1_fw_lkup, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 0
  %55 = call i32 @request_firmware(%struct.firmware** %8, i8* %52, i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %112

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.firmware*, %struct.firmware** %8, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i32* @kmalloc(i32 %67, i32 %68)
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %99

72:                                               ; preds = %64
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.firmware*, %struct.firmware** %8, align 8
  %75 = getelementptr inbounds %struct.firmware, %struct.firmware* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.firmware*, %struct.firmware** %8, align 8
  %78 = getelementptr inbounds %struct.firmware, %struct.firmware* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memcpy(i32* %73, i32 %76, i32 %79)
  %81 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %82 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %83 = call i32 @usb_sndbulkpipe(%struct.usb_device* %82, i32 2)
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.firmware*, %struct.firmware** %8, align 8
  %86 = getelementptr inbounds %struct.firmware, %struct.firmware* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @usb_bulk_msg(%struct.usb_device* %81, i32 %83, i32* %84, i32 %87, i32* %11, i32 1000)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.firmware*, %struct.firmware** %8, align 8
  %90 = getelementptr inbounds %struct.firmware, %struct.firmware* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i8*, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @kfree(i32* %97)
  br label %103

99:                                               ; preds = %64
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %72
  %104 = load i8*, i8** %12, align 8
  %105 = load %struct.firmware*, %struct.firmware** %8, align 8
  %106 = getelementptr inbounds %struct.firmware, %struct.firmware* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %104, i32 %107)
  %109 = load %struct.firmware*, %struct.firmware** %8, align 8
  %110 = call i32 @release_firmware(%struct.firmware* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %103, %58, %28
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_2__* @sms_get_board(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i8* @sms_get_fw_name(i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
