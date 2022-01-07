; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_frontend_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_frontend_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"component=%d cmd=%d arg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @af9035_frontend_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_frontend_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.dvb_usb_device*, align 8
  %12 = alloca %struct.usb_interface*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %10, align 8
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %16 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %15)
  store %struct.dvb_usb_device* %16, %struct.dvb_usb_device** %11, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load %struct.usb_interface*, %struct.usb_interface** %18, align 8
  store %struct.usb_interface* %19, %struct.usb_interface** %12, align 8
  %20 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  %21 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %32 [
    i32 128, label %27
  ]

27:                                               ; preds = %4
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @af9035_tuner_callback(%struct.dvb_usb_device* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @af9035_tuner_callback(%struct.dvb_usb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
