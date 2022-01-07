; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_dvb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-dvb.c_dvb_usb_adapter_dvb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)* }

@DVB_USB_ADAP_STATE_DVB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unregistering DVB part\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_adapter_dvb_exit(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %3 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @DVB_USB_ADAP_STATE_DVB, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = call i32 @deb_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 4
  %13 = call i32 @dvb_net_release(i32* %12)
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %17, align 8
  %19 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 %18(%struct.TYPE_3__* %21)
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 3
  %25 = call i32 @dvb_dmxdev_release(i32* %24)
  %26 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %26, i32 0, i32 2
  %28 = call i32 @dvb_dmx_release(%struct.TYPE_4__* %27)
  %29 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %30 = call i32 @dvb_usb_media_device_unregister(%struct.dvb_usb_adapter* %29)
  %31 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %31, i32 0, i32 1
  %33 = call i32 @dvb_unregister_adapter(i32* %32)
  %34 = load i32, i32* @DVB_USB_ADAP_STATE_DVB, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @deb_info(i8*) #1

declare dso_local i32 @dvb_net_release(i32*) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_4__*) #1

declare dso_local i32 @dvb_usb_media_device_unregister(%struct.dvb_usb_adapter*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
