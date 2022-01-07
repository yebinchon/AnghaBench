; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-firmware.c_usb_cypress_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-firmware.c_usb_cypress_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }
%struct.hexline = type { i32, i32*, i32, i32 }

@cypress = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not stop the USB controller CPU.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"writing to address 0x%04x (buffer: 0x%02x %02x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"error while transferring firmware (transferred size: %d, block size: %d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"firmware download failed at %d with %d\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"could not restart the USB controller CPU.\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_cypress_load_firmware(%struct.usb_device* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hexline*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cypress, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc(i32 24, i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %113

26:                                               ; preds = %3
  %27 = load i32*, i32** %9, align 8
  %28 = bitcast i32* %27 to %struct.hexline*
  store %struct.hexline* %28, %struct.hexline** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @usb_cypress_writemem(%struct.usb_device* %31, i32 %32, i32* %33, i32 1)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %26
  br label %39

39:                                               ; preds = %79, %38
  %40 = load %struct.firmware*, %struct.firmware** %6, align 8
  %41 = load %struct.hexline*, %struct.hexline** %8, align 8
  %42 = call i32 @dvb_usb_get_hexline(%struct.firmware* %40, %struct.hexline* %41, i32* %11)
  store i32 %42, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %39
  %45 = load %struct.hexline*, %struct.hexline** %8, align 8
  %46 = getelementptr inbounds %struct.hexline, %struct.hexline* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hexline*, %struct.hexline** %8, align 8
  %49 = getelementptr inbounds %struct.hexline, %struct.hexline* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.hexline*, %struct.hexline** %8, align 8
  %52 = getelementptr inbounds %struct.hexline, %struct.hexline* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @deb_fw(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %56 = load %struct.hexline*, %struct.hexline** %8, align 8
  %57 = getelementptr inbounds %struct.hexline, %struct.hexline* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.hexline*, %struct.hexline** %8, align 8
  %60 = getelementptr inbounds %struct.hexline, %struct.hexline* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.hexline*, %struct.hexline** %8, align 8
  %63 = getelementptr inbounds %struct.hexline, %struct.hexline* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @usb_cypress_writemem(%struct.usb_device* %55, i32 %58, i32* %61, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.hexline*, %struct.hexline** %8, align 8
  %68 = getelementptr inbounds %struct.hexline, %struct.hexline* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %44
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.hexline*, %struct.hexline** %8, align 8
  %74 = getelementptr inbounds %struct.hexline, %struct.hexline* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %80

79:                                               ; preds = %44
  br label %39

80:                                               ; preds = %71, %39
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %113

90:                                               ; preds = %80
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 0, i32* %95, align 4
  %96 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @usb_cypress_writemem(%struct.usb_device* %96, i32 %97, i32* %98, i32 1)
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %101, %93
  br label %109

106:                                              ; preds = %90
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %106, %105
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %83, %23
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_cypress_writemem(%struct.usb_device*, i32, i32*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @dvb_usb_get_hexline(%struct.firmware*, %struct.hexline*, i32*) #1

declare dso_local i32 @deb_fw(i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
