; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_get_stream_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_get_stream_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.usb_data_stream_properties = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_5__*, %struct.usb_interface* }
%struct.TYPE_5__ = type { i64 }
%struct.usb_interface = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"adap=%d\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, %struct.usb_data_stream_properties*)* @af9035_get_stream_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_get_stream_config(%struct.dvb_frontend* %0, i32* %1, %struct.usb_data_stream_properties* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_data_stream_properties*, align 8
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.usb_data_stream_properties* %2, %struct.usb_data_stream_properties** %6, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = call %struct.dvb_usb_device* @fe_to_d(%struct.dvb_frontend* %9)
  store %struct.dvb_usb_device* %10, %struct.dvb_usb_device** %7, align 8
  %11 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %11, i32 0, i32 1
  %13 = load %struct.usb_interface*, %struct.usb_interface** %12, align 8
  store %struct.usb_interface* %13, %struct.usb_interface** %8, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 0
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = call %struct.TYPE_8__* @fe_to_adap(%struct.dvb_frontend* %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USB_SPEED_FULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %6, align 8
  %30 = getelementptr inbounds %struct.usb_data_stream_properties, %struct.usb_data_stream_properties* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 940, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %3
  ret i32 0
}

declare dso_local %struct.dvb_usb_device* @fe_to_d(%struct.dvb_frontend*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @fe_to_adap(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
