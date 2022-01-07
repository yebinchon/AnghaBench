; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_frontend_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_rtl28xxu.c_rtl2832u_frontend_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32* }
%struct.dvb_usb_device = type { %struct.TYPE_3__*, %struct.rtl28xxu_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.rtl28xxu_dev = type { i32 }

@i2c_adapter_type = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"component=%d cmd=%d arg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @rtl2832u_frontend_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832u_frontend_callback(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.i2c_adapter*, align 8
  %13 = alloca %struct.dvb_usb_device*, align 8
  %14 = alloca %struct.rtl28xxu_dev*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %10, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %11, align 8
  %21 = load %struct.device*, %struct.device** %11, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %11, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @i2c_adapter_type
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %11, align 8
  %30 = call %struct.i2c_adapter* @to_i2c_adapter(%struct.device* %29)
  store %struct.i2c_adapter* %30, %struct.i2c_adapter** %12, align 8
  br label %34

31:                                               ; preds = %23, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %65

34:                                               ; preds = %28
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %36 = call %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter* %35)
  store %struct.dvb_usb_device* %36, %struct.dvb_usb_device** %13, align 8
  %37 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %38 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %37, i32 0, i32 1
  %39 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %38, align 8
  store %struct.rtl28xxu_dev* %39, %struct.rtl28xxu_dev** %14, align 8
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %64 [
    i32 130, label %49
  ]

49:                                               ; preds = %34
  %50 = load %struct.rtl28xxu_dev*, %struct.rtl28xxu_dev** %14, align 8
  %51 = getelementptr inbounds %struct.rtl28xxu_dev, %struct.rtl28xxu_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %63 [
    i32 129, label %53
    i32 128, label %58
  ]

53:                                               ; preds = %49
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @rtl2832u_fc0012_tuner_callback(%struct.dvb_usb_device* %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %65

58:                                               ; preds = %49
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @rtl2832u_tua9001_tuner_callback(%struct.dvb_usb_device* %59, i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %34
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %58, %53, %31
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.i2c_adapter* @to_i2c_adapter(%struct.device*) #1

declare dso_local %struct.dvb_usb_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @rtl2832u_fc0012_tuner_callback(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @rtl2832u_tua9001_tuner_callback(%struct.dvb_usb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
