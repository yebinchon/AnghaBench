; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32*, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 (%struct.dvb_usb_device.0*)* }
%struct.dvb_usb_device.0 = type opaque

@DVB_USB_STATE_INIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no memory for priv in 'struct dvb_usb_device'\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not initialize remote control.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i16*)* @dvb_usb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_usb_init(%struct.dvb_usb_device* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 5
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %10, i32 0, i32 4
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %13, i32 0, i32 3
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load i32, i32* @DVB_USB_STATE_INIT, align 4
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %2
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kzalloc(i64 %28, i32 %29)
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = call i32 @err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %91

41:                                               ; preds = %24
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.dvb_usb_device.0*)*, i32 (%struct.dvb_usb_device.0*)** %44, align 8
  %46 = icmp ne i32 (%struct.dvb_usb_device.0*)* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.dvb_usb_device.0*)*, i32 (%struct.dvb_usb_device.0*)** %50, align 8
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %53 = bitcast %struct.dvb_usb_device* %52 to %struct.dvb_usb_device.0*
  %54 = call i32 %51(%struct.dvb_usb_device.0* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %63 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %91

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %41
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %69 = call i32 @dvb_usb_device_power_ctrl(%struct.dvb_usb_device* %68, i32 1)
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %71 = call i32 @dvb_usb_i2c_init(%struct.dvb_usb_device* %70)
  store i32 %71, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %75 = load i16*, i16** %5, align 8
  %76 = call i32 @dvb_usb_adapter_init(%struct.dvb_usb_device* %74, i16* %75)
  store i32 %76, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73, %67
  %79 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %80 = call i32 @dvb_usb_exit(%struct.dvb_usb_device* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %91

82:                                               ; preds = %73
  %83 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %84 = call i32 @dvb_usb_remote_init(%struct.dvb_usb_device* %83)
  store i32 %84, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %90 = call i32 @dvb_usb_device_power_ctrl(%struct.dvb_usb_device* %89, i32 0)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %78, %57, %37
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dvb_usb_device_power_ctrl(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @dvb_usb_i2c_init(%struct.dvb_usb_device*) #1

declare dso_local i32 @dvb_usb_adapter_init(%struct.dvb_usb_device*, i16*) #1

declare dso_local i32 @dvb_usb_exit(%struct.dvb_usb_device*) #1

declare dso_local i32 @dvb_usb_remote_init(%struct.dvb_usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
