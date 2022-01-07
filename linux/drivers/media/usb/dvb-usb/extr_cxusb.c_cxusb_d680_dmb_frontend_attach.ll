; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_d680_dmb_frontend_attach.c"
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
@lgs8gxx_attach = common dso_local global i32 0, align 4
@d680_lgs8gl5_cfg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @cxusb_d680_dmb_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_d680_dmb_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %4, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @usb_set_interface(i32 %11, i32 0, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_sndbulkpipe(i32 %22, i32 %26)
  %28 = call i32 @usb_clear_halt(i32 %19, i32 %27)
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_rcvbulkpipe(i32 %34, i32 %38)
  %40 = call i32 @usb_clear_halt(i32 %31, i32 %39)
  %41 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_rcvbulkpipe(i32 %46, i32 %57)
  %59 = call i32 @usb_clear_halt(i32 %43, i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %69, %16
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 5
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %65 = call i32 @cxusb_d680_dmb_drain_message(%struct.dvb_usb_device* %64)
  %66 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %67 = call i32 @cxusb_d680_dmb_drain_video(%struct.dvb_usb_device* %66)
  %68 = call i32 @msleep(i32 200)
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %60

72:                                               ; preds = %60
  %73 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %74 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %73, i32 7, i32 0)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = call i32 @err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %111

80:                                               ; preds = %72
  %81 = call i32 @msleep(i32 100)
  %82 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %83 = call i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device* %82, i32 7, i32 1)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %111

89:                                               ; preds = %80
  %90 = call i32 @msleep(i32 100)
  %91 = load i32, i32* @lgs8gxx_attach, align 4
  %92 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %93 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %92, i32 0, i32 0
  %94 = call i32 @dvb_attach(i32 %91, i32* @d680_lgs8gl5_cfg, i32* %93)
  %95 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 %94, i32* %99, align 4
  %100 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %89
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %111

110:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %107, %85, %76
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @cxusb_d680_dmb_drain_message(%struct.dvb_usb_device*) #1

declare dso_local i32 @cxusb_d680_dmb_drain_video(%struct.dvb_usb_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @cxusb_d680_dmb_gpio_tuner(%struct.dvb_usb_device*, i32, i32) #1

declare dso_local i32 @dvb_attach(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
