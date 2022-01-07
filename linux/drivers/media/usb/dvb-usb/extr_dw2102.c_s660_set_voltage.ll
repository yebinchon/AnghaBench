; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_s660_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_s660_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.dvb_usb_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.dw2102_state = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @s660_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s660_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca %struct.dw2102_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.dvb_usb_adapter*
  store %struct.dvb_usb_adapter* %12, %struct.dvb_usb_adapter** %5, align 8
  %13 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.dw2102_state*
  store %struct.dw2102_state* %18, %struct.dw2102_state** %6, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dw210x_set_voltage(%struct.dvb_frontend* %19, i32 %20)
  %22 = load %struct.dw2102_state*, %struct.dw2102_state** %6, align 8
  %23 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.dw2102_state*, %struct.dw2102_state** %6, align 8
  %28 = getelementptr inbounds %struct.dw2102_state, %struct.dw2102_state* %27, i32 0, i32 0
  %29 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %28, align 8
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %31 = bitcast %struct.dvb_frontend* %30 to %struct.dvb_frontend.0*
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %29(%struct.dvb_frontend.0* %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %2
  ret i32 0
}

declare dso_local i32 @dw210x_set_voltage(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
