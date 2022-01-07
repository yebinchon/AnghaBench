; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-urb.c_dvb_usb_data_complete_204.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-urb.c_dvb_usb_data_complete_204.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { i64, i32, i32 }

@DVB_USB_ADAP_STATE_DVB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_data_stream*, i32*, i64)* @dvb_usb_data_complete_204 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_usb_data_complete_204(%struct.usb_data_stream* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.usb_data_stream*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %9 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %8, i32 0, i32 0
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %9, align 8
  store %struct.dvb_usb_adapter* %10, %struct.dvb_usb_adapter** %7, align 8
  %11 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %7, align 8
  %12 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %7, align 8
  %17 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DVB_USB_ADAP_STATE_DVB, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %23, i32 0, i32 2
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @dvb_dmx_swfilter_204(i32* %24, i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %22, %15, %3
  ret void
}

declare dso_local i32 @dvb_dmx_swfilter_204(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
