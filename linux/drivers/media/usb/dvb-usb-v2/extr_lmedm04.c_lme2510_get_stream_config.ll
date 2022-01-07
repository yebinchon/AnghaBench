; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_get_stream_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_get_stream_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.usb_data_stream_properties = type { i32 }
%struct.dvb_usb_adapter = type { i32, i32 }
%struct.dvb_usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pid_filter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, %struct.usb_data_stream_properties*)* @lme2510_get_stream_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_get_stream_config(%struct.dvb_frontend* %0, i32* %1, %struct.usb_data_stream_properties* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.usb_data_stream_properties*, align 8
  %8 = alloca %struct.dvb_usb_adapter*, align 8
  %9 = alloca %struct.dvb_usb_device*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.usb_data_stream_properties* %2, %struct.usb_data_stream_properties** %7, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %11 = call %struct.dvb_usb_adapter* @fe_to_adap(%struct.dvb_frontend* %10)
  store %struct.dvb_usb_adapter* %11, %struct.dvb_usb_adapter** %8, align 8
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %8, align 8
  %13 = icmp eq %struct.dvb_usb_adapter* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

15:                                               ; preds = %3
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %8, align 8
  %17 = call %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter* %16)
  store %struct.dvb_usb_device* %17, %struct.dvb_usb_device** %9, align 8
  %18 = load i32, i32* @pid_filter, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %8, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %8, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 1
  store i32 15, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = icmp eq i32 %32, 4386
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %7, align 8
  %36 = getelementptr inbounds %struct.usb_data_stream_properties, %struct.usb_data_stream_properties* %35, i32 0, i32 0
  store i32 8, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %25
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.dvb_usb_adapter* @fe_to_adap(%struct.dvb_frontend*) #1

declare dso_local %struct.dvb_usb_device* @adap_to_d(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
