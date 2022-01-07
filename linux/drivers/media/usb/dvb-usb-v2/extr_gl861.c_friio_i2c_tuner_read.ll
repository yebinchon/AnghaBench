; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_i2c_tuner_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_friio_i2c_tuner_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.friio_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.i2c_msg*)* @friio_i2c_tuner_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friio_i2c_tuner_read(%struct.dvb_usb_device* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca %struct.friio_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %8 = call %struct.friio_priv* @d_to_priv(%struct.dvb_usb_device* %7)
  store %struct.friio_priv* %8, %struct.friio_priv** %5, align 8
  %9 = load %struct.friio_priv*, %struct.friio_priv** %5, align 8
  %10 = getelementptr inbounds %struct.friio_priv, %struct.friio_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gl861_i2c_read_ex(%struct.dvb_usb_device* %14, i32 %15, i32 %18, i32 %21)
  ret i32 %22
}

declare dso_local %struct.friio_priv* @d_to_priv(%struct.dvb_usb_device*) #1

declare dso_local i32 @gl861_i2c_read_ex(%struct.dvb_usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
