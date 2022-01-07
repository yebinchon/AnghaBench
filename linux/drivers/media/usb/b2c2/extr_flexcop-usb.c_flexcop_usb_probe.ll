; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.flexcop_usb = type { %struct.usb_interface*, %struct.usb_device*, i32, %struct.flexcop_device* }
%struct.flexcop_device = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.flexcop_usb* }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@flexcop_usb_read_ibi_reg = common dso_local global i32 0, align 4
@flexcop_usb_write_ibi_reg = common dso_local global i32 0, align 4
@flexcop_usb_i2c_request = common dso_local global i32 0, align 4
@flexcop_usb_get_mac_addr = common dso_local global i32 0, align 4
@flexcop_usb_stream_control = common dso_local global i32 0, align 4
@FC_USB = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s successfully initialized and connected.\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @flexcop_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.flexcop_usb*, align 8
  %8 = alloca %struct.flexcop_device*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  store %struct.flexcop_usb* null, %struct.flexcop_usb** %7, align 8
  store %struct.flexcop_device* null, %struct.flexcop_device** %8, align 8
  %12 = call %struct.flexcop_device* @flexcop_device_kmalloc(i32 32)
  store %struct.flexcop_device* %12, %struct.flexcop_device** %8, align 8
  %13 = icmp eq %struct.flexcop_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %88

18:                                               ; preds = %2
  %19 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %20 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %19, i32 0, i32 9
  %21 = load %struct.flexcop_usb*, %struct.flexcop_usb** %20, align 8
  store %struct.flexcop_usb* %21, %struct.flexcop_usb** %7, align 8
  %22 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %23 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %24 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %23, i32 0, i32 3
  store %struct.flexcop_device* %22, %struct.flexcop_device** %24, align 8
  %25 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %26 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load i32, i32* @flexcop_usb_read_ibi_reg, align 4
  %29 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %30 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @flexcop_usb_write_ibi_reg, align 4
  %32 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %33 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @flexcop_usb_i2c_request, align 4
  %35 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %36 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @flexcop_usb_get_mac_addr, align 4
  %38 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %39 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @flexcop_usb_stream_control, align 4
  %41 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %42 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %44 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* @FC_USB, align 4
  %46 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %47 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %51 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %54 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %57 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %56, i32 0, i32 1
  store %struct.usb_device* %55, %struct.usb_device** %57, align 8
  %58 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %59 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %60 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %59, i32 0, i32 0
  store %struct.usb_interface* %58, %struct.usb_interface** %60, align 8
  %61 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %62 = call i32 @flexcop_usb_init(%struct.flexcop_usb* %61)
  store i32 %62, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %18
  br label %84

65:                                               ; preds = %18
  %66 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %67 = call i32 @flexcop_device_initialize(%struct.flexcop_device* %66)
  store i32 %67, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %81

70:                                               ; preds = %65
  %71 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %72 = call i32 @flexcop_usb_transfer_init(%struct.flexcop_usb* %71)
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @DRIVER_NAME, align 4
  %77 = call i32 @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  store i32 0, i32* %3, align 4
  br label %88

78:                                               ; preds = %74
  %79 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %80 = call i32 @flexcop_device_exit(%struct.flexcop_device* %79)
  br label %81

81:                                               ; preds = %78, %69
  %82 = load %struct.flexcop_usb*, %struct.flexcop_usb** %7, align 8
  %83 = call i32 @flexcop_usb_exit(%struct.flexcop_usb* %82)
  br label %84

84:                                               ; preds = %81, %64
  %85 = load %struct.flexcop_device*, %struct.flexcop_device** %8, align 8
  %86 = call i32 @flexcop_device_kfree(%struct.flexcop_device* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %75, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.flexcop_device* @flexcop_device_kmalloc(i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @flexcop_usb_init(%struct.flexcop_usb*) #1

declare dso_local i32 @flexcop_device_initialize(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_usb_transfer_init(%struct.flexcop_usb*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @flexcop_device_exit(%struct.flexcop_device*) #1

declare dso_local i32 @flexcop_usb_exit(%struct.flexcop_usb*) #1

declare dso_local i32 @flexcop_device_kfree(%struct.flexcop_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
