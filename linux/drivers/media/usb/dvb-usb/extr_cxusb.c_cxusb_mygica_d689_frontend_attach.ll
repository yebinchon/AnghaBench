; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_mygica_d689_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_mygica_d689_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_10__*, %struct.dvb_usb_device* }
%struct.TYPE_10__ = type { i32 }
%struct.dvb_usb_device = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"set interface failed\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"clear tuner gpio failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"set tuner gpio failed\00", align 1
@atbm8830_attach = common dso_local global i32 0, align 4
@mygica_d689_atbm8830_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @cxusb_mygica_d689_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_mygica_d689_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %5, i32 0, i32 1
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  store %struct.dvb_usb_device* %7, %struct.dvb_usb_device** %4, align 8
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @usb_set_interface(i32 %10, i32 0, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @usb_sndbulkpipe(i32 %21, i32 %25)
  %27 = call i32 @usb_clear_halt(i32 %18, i32 %26)
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @usb_rcvbulkpipe(i32 %33, i32 %37)
  %39 = call i32 @usb_clear_halt(i32 %30, i32 %38)
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_rcvbulkpipe(i32 %45, i32 %56)
  %58 = call i32 @usb_clear_halt(i32 %42, i32 %57)
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %60 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %59, i32 7, i32 0)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %15
  %63 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %97

66:                                               ; preds = %15
  %67 = call i32 @msleep(i32 100)
  %68 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %69 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %68, i32 7, i32 1)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %97

75:                                               ; preds = %66
  %76 = call i32 @msleep(i32 100)
  %77 = load i32, i32* @atbm8830_attach, align 4
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %78, i32 0, i32 0
  %80 = call i32 @dvb_attach(i32 %77, i32* @mygica_d689_atbm8830_cfg, i32* %79)
  %81 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  %86 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %75
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %93, %71, %62
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
