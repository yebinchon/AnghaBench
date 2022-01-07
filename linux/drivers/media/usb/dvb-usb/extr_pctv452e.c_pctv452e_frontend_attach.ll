; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_pctv452e.c_pctv452e_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.usb_device_id** }
%struct.usb_device_id = type { i64, i64 }
%struct.TYPE_4__ = type { i32* }

@stb0899_attach = common dso_local global i32 0, align 4
@stb0899_config = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lnbp22_attach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Cannot attach lnbp22\0A\00", align 1
@USB_VID_TECHNOTREND = common dso_local global i64 0, align 8
@USB_PID_TECHNOTREND_CONNECT_S2_3650_CI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @pctv452e_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pctv452e_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %5 = load i32, i32* @stb0899_attach, align 4
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = call i32* @dvb_attach(i32 %5, i32* @stb0899_config, i32* %9)
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32* %10, i32** %15, align 8
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %1
  %27 = load i32, i32* @lnbp22_attach, align 4
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = call i32* @dvb_attach(i32 %27, i32* %33, i32* %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %26
  %43 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.usb_device_id**, %struct.usb_device_id*** %48, align 8
  %50 = getelementptr inbounds %struct.usb_device_id*, %struct.usb_device_id** %49, i64 0
  %51 = load %struct.usb_device_id*, %struct.usb_device_id** %50, align 8
  store %struct.usb_device_id* %51, %struct.usb_device_id** %4, align 8
  %52 = load i64, i64* @USB_VID_TECHNOTREND, align 8
  %53 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %54 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %42
  %58 = load i64, i64* @USB_PID_TECHNOTREND_CONNECT_S2_3650_CI, align 8
  %59 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %60 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %65 = call i32 @tt3650_ci_init(%struct.dvb_usb_adapter* %64)
  br label %66

66:                                               ; preds = %63, %57, %42
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32* @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @tt3650_ci_init(%struct.dvb_usb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
