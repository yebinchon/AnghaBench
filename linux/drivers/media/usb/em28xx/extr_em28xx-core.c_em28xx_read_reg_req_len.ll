; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_read_reg_req_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_read_reg_req_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i64, i32 }
%struct.usb_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@URB_MAX_CTRL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x  failed with error %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x <<< %*ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_read_reg_req_len(%struct.em28xx* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(i32 %17)
  store %struct.usb_device* %18, %struct.usb_device** %13, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %20 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %19, i32 0)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %112

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @URB_MAX_CTRL_SIZE, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %112

35:                                               ; preds = %28
  %36 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %37 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @USB_DIR_IN, align 4
  %43 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %49 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @HZ, align 4
  %53 = call i32 @usb_control_msg(%struct.usb_device* %39, i32 %40, i32 %41, i32 %46, i32 0, i32 %47, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %35
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @USB_DIR_IN, align 4
  %59 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 255
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 8
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 255
  %70 = load i32, i32* %11, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @em28xx_regdbg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %62, i32 %63, i32 0, i32 0, i32 %65, i32 %67, i32 %69, i32 %71, i32 %72)
  %74 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %75 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @usb_translate_errors(i32 %77)
  store i32 %78, i32* %6, align 4
  br label %112

79:                                               ; preds = %35
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %85 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @memcpy(i8* %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %91 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @USB_DIR_IN, align 4
  %95 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 255
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 8
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, 255
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %106, 8
  %108 = load i32, i32* %11, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @em28xx_regdbg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %98, i32 %99, i32 0, i32 0, i32 %101, i32 %103, i32 %105, i32 %107, i32 %108, i8* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %89, %56, %32, %25
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_regdbg(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_translate_errors(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
