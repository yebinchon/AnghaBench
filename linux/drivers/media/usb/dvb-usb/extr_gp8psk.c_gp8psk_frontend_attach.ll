; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_frontend_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_gp8psk.c_gp8psk_frontend_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_6__*, %struct.dvb_usb_device* }
%struct.TYPE_6__ = type { i32 }
%struct.dvb_usb_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@USB_PID_GENPIX_8PSK_REV_1_WARM = common dso_local global i32 0, align 4
@gp8psk_fe_attach = common dso_local global i32 0, align 4
@gp8psk_fe_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @gp8psk_frontend_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp8psk_frontend_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca %struct.dvb_usb_adapter*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %2, align 8
  %6 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %6, i32 0, i32 1
  %8 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  store %struct.dvb_usb_device* %8, %struct.dvb_usb_device** %3, align 8
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le16_to_cpu(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @USB_PID_GENPIX_8PSK_REV_1_WARM, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @gp8psk_fe_attach, align 4
  %22 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dvb_attach(i32 %21, i32* @gp8psk_fe_ops, %struct.dvb_usb_device* %22, i32 %23)
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dvb_attach(i32, i32*, %struct.dvb_usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
