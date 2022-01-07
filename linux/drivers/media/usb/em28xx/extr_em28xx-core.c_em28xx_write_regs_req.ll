; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_write_regs_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-core.c_em28xx_write_regs_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, i32, i64, i32 }
%struct.usb_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@URB_MAX_CTRL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"(pipe 0x%08x): OUT:  %02x %02x %02x %02x %02x %02x %02x %02x >>> %*ph  failed with error %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"(pipe 0x%08x): OUT:  %02x %02x %02x %02x %02x %02x %02x %02x >>> %*ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_write_regs_req(%struct.em28xx* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
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
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(i32 %17)
  store %struct.usb_device* %18, %struct.usb_device** %13, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %120

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @URB_MAX_CTRL_SIZE, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %120

38:                                               ; preds = %31
  %39 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %40 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @memcpy(i32 %44, i8* %45, i32 %46)
  %48 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @USB_DIR_OUT, align 4
  %52 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @HZ, align 4
  %62 = call i32 @usb_control_msg(%struct.usb_device* %48, i32 %49, i32 %50, i32 %55, i32 0, i32 %56, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %38
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @USB_DIR_OUT, align 4
  %71 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, 255
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 8
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 255
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 8
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @em28xx_regdbg(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %74, i32 %75, i32 0, i32 0, i32 %77, i32 %79, i32 %81, i32 %83, i32 %84, i8* %85, i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @usb_translate_errors(i32 %88)
  store i32 %89, i32* %6, align 4
  br label %120

90:                                               ; preds = %38
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @USB_DIR_OUT, align 4
  %93 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 255
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %100, 8
  %102 = load i32, i32* %11, align 4
  %103 = and i32 %102, 255
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 8
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 (i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @em28xx_regdbg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %96, i32 %97, i32 0, i32 0, i32 %99, i32 %101, i32 %103, i32 %105, i32 %106, i8* %107)
  %109 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %110 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %90
  %114 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %115 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @msleep(i64 %116)
  br label %118

118:                                              ; preds = %113, %90
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %118, %68, %35, %25
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @em28xx_regdbg(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @usb_translate_errors(i32) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
