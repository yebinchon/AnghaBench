; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_init_webcam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_init_webcam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.usb_usbvision = type { i8*, i64, i32 }

@usbvision_init_webcam.init_values = internal global [38 x [3 x i8]] [[3 x i8] c"\04\12\08", [3 x i8] c"\05\FF\C8", [3 x i8] c"\06\18\07", [3 x i8] c"\07\90\00", [3 x i8] c"\09\00\00", [3 x i8] c"\0A\00\00", [3 x i8] c"\0B\08\00", [3 x i8] c"\0D\CC\CC", [3 x i8] c"\0E\13\14", [3 x i8] c"\10\9B\83", [3 x i8] c"\11Z?", [3 x i8] c"\12\E4s", [3 x i8] c"\13\88\84", [3 x i8] c"\14\89\80", [3 x i8] c"\15\00 ", [3 x i8] c"\16\00\00", [3 x i8] c"\17\FF\A0", [3 x i8] c"\18k ", [3 x i8] c"\19\22@", [3 x i8] c"\1A\10\07", [3 x i8] c"\1B\00G", [3 x i8] c"\1C\03\E0", [3 x i8] c"\1D\00\00", [3 x i8] c"\1E\00\00", [3 x i8] c"\1F\00\00", [3 x i8] c" \00\00", [3 x i8] c"!\00\00", [3 x i8] c"\22\00\00", [3 x i8] c"#\00\00", [3 x i8] c"$\00\00", [3 x i8] c"%\00\00", [3 x i8] c"&\00\00", [3 x i8] c"'\00\00", [3 x i8] c"(\00\00", [3 x i8] c")\00\00", [3 x i8] c"\08\80`", [3 x i8] c"\0F-$", [3 x i8] c"\0C\80\80"], align 16
@usbvision_device_data = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_STD_NTSC = common dso_local global i64 0, align 8
@USBVISION_SER_MODE = common dso_local global i32 0, align 4
@USBVISION_SER_MODE_SOFT = common dso_local global i32 0, align 4
@USBVISION_OP_CODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USBVISION_SER_DAT1 = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@USBVISION_SER_MODE_SIO = common dso_local global i32 0, align 4
@USBVISION_SER_CONT = common dso_local global i32 0, align 4
@USBVISION_IOPIN_REG = common dso_local global i32 0, align 4
@USBVISION_IO_2 = common dso_local global i32 0, align 4
@USBVISION_CLK_OUT = common dso_local global i32 0, align 4
@USBVISION_DAT_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*)* @usbvision_init_webcam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_init_webcam(%struct.usb_usbvision* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usbvision_device_data, align 8
  %11 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %12 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_STD_NTSC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i8 52, i8* getelementptr inbounds ([38 x [3 x i8]], [38 x [3 x i8]]* @usbvision_init_webcam.init_values, i64 0, i64 4, i64 1), align 1
  br label %20

20:                                               ; preds = %19, %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %97, %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 38
  br i1 %24, label %25, label %100

25:                                               ; preds = %21
  %26 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %27 = load i32, i32* @USBVISION_SER_MODE, align 4
  %28 = load i32, i32* @USBVISION_SER_MODE_SOFT, align 4
  %29 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %26, i32 %27, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [38 x [3 x i8]], [38 x [3 x i8]]* @usbvision_init_webcam.init_values, i64 0, i64 %32
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %33, i64 0, i64 0
  %35 = call i32 @memcpy(i8* %30, i8* %34, i32 3)
  %36 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %37 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %40 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_sndctrlpipe(i32 %41, i32 1)
  %43 = load i32, i32* @USBVISION_OP_CODE, align 4
  %44 = load i32, i32* @USB_DIR_OUT, align 4
  %45 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %48 = or i32 %46, %47
  %49 = load i64, i64* @USBVISION_SER_DAT1, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @HZ, align 4
  %53 = call i32 @usb_control_msg(i32 %38, i32 %42, i32 %43, i32 %48, i32 0, i32 %50, i8* %51, i32 3, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %25
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %101

58:                                               ; preds = %25
  %59 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %60 = load i32, i32* @USBVISION_SER_MODE, align 4
  %61 = load i32, i32* @USBVISION_SER_MODE_SIO, align 4
  %62 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %59, i32 %60, i32 %61)
  %63 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %64 = load i32, i32* @USBVISION_SER_CONT, align 4
  %65 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %63, i32 %64, i32 19)
  %66 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %67 = load i32, i32* @USBVISION_IOPIN_REG, align 4
  %68 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %66, i32 %67, i32 0)
  %69 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %70 = load i32, i32* @USBVISION_SER_MODE, align 4
  %71 = load i32, i32* @USBVISION_SER_MODE_SOFT, align 4
  %72 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %69, i32 %70, i32 %71)
  %73 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %74 = load i32, i32* @USBVISION_IOPIN_REG, align 4
  %75 = load i32, i32* @USBVISION_IO_2, align 4
  %76 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %73, i32 %74, i32 %75)
  %77 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %78 = load i32, i32* @USBVISION_SER_MODE, align 4
  %79 = load i32, i32* @USBVISION_SER_MODE_SOFT, align 4
  %80 = load i32, i32* @USBVISION_CLK_OUT, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %77, i32 %78, i32 %81)
  %83 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %84 = load i32, i32* @USBVISION_SER_MODE, align 4
  %85 = load i32, i32* @USBVISION_SER_MODE_SOFT, align 4
  %86 = load i32, i32* @USBVISION_DAT_IO, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %83, i32 %84, i32 %87)
  %89 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %90 = load i32, i32* @USBVISION_SER_MODE, align 4
  %91 = load i32, i32* @USBVISION_SER_MODE_SOFT, align 4
  %92 = load i32, i32* @USBVISION_CLK_OUT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @USBVISION_DAT_IO, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @usbvision_write_reg(%struct.usb_usbvision* %89, i32 %90, i32 %95)
  br label %97

97:                                               ; preds = %58
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %21

100:                                              ; preds = %21
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %56
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @usbvision_write_reg(%struct.usb_usbvision*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
