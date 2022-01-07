; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-dvb.c_em28xx_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_dvb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.em28xx_i2c_bus* }
%struct.em28xx_i2c_bus = type { %struct.em28xx* }
%struct.em28xx = type { i32, i32, i64, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EM28XX_DVB_BULK_PACKET_MULTIPLIER = common dso_local global i32 0, align 4
@EM28XX_DVB_NUM_ISOC_PACKETS = common dso_local global i32 0, align 4
@EM28XX_DIGITAL_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Using %d buffers each with %d x %d bytes, alternate %d\0A\00", align 1
@EM28XX_DVB_NUM_BUFS = common dso_local global i32 0, align 4
@em28xx_dvb_urb_data_copy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_dvb*)* @em28xx_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_start_streaming(%struct.em28xx_dvb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx_dvb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.em28xx_i2c_bus*, align 8
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.em28xx_dvb* %0, %struct.em28xx_dvb** %3, align 8
  %11 = load %struct.em28xx_dvb*, %struct.em28xx_dvb** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx_dvb, %struct.em28xx_dvb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %13, align 8
  store %struct.em28xx_i2c_bus* %14, %struct.em28xx_i2c_bus** %5, align 8
  %15 = load %struct.em28xx_i2c_bus*, %struct.em28xx_i2c_bus** %5, align 8
  %16 = getelementptr inbounds %struct.em28xx_i2c_bus, %struct.em28xx_i2c_bus* %15, i32 0, i32 0
  %17 = load %struct.em28xx*, %struct.em28xx** %16, align 8
  store %struct.em28xx* %17, %struct.em28xx** %6, align 8
  %18 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.usb_device* @interface_to_usbdev(i32 %20)
  store %struct.usb_device* %21, %struct.usb_device** %7, align 8
  %22 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %28 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %94

34:                                               ; preds = %26
  store i32 512, i32* %8, align 4
  %35 = load i32, i32* @EM28XX_DVB_BULK_PACKET_MULTIPLIER, align 4
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %94

44:                                               ; preds = %36
  %45 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %94

52:                                               ; preds = %44
  %53 = load i32, i32* @EM28XX_DVB_NUM_ISOC_PACKETS, align 4
  store i32 %53, i32* %9, align 4
  %54 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %55 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %52, %34
  %58 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %59 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %65 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @usb_set_interface(%struct.usb_device* %64, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %57
  %71 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %72 = load i32, i32* @EM28XX_DIGITAL_MODE, align 4
  %73 = call i32 @em28xx_set_mode(%struct.em28xx* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %94

78:                                               ; preds = %70
  %79 = load i32, i32* @EM28XX_DVB_NUM_BUFS, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %85 = load i32, i32* @EM28XX_DIGITAL_MODE, align 4
  %86 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %87 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @EM28XX_DVB_NUM_BUFS, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @em28xx_dvb_urb_data_copy, align 4
  %93 = call i32 @em28xx_init_usb_xfer(%struct.em28xx* %84, i32 %85, i64 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %78, %76, %50, %41, %31
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_init_usb_xfer(%struct.em28xx*, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
