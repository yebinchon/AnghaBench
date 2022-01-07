; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib807x_set_param_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_devices.c_dib807x_set_param_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__*, %struct.dtv_frontend_properties }
%struct.TYPE_4__ = type { %struct.dvb_usb_adapter* }
%struct.dvb_usb_adapter = type { %struct.dib0700_adapter_state* }
%struct.dib0700_adapter_state = type { {}*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend*, i32)* }
%struct.dtv_frontend_properties = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"WBD for DiB8000: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib807x_set_param_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib807x_set_param_override(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca %struct.dib0700_adapter_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %13, align 8
  store %struct.dvb_usb_adapter* %14, %struct.dvb_usb_adapter** %4, align 8
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  %17 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %16, align 8
  store %struct.dib0700_adapter_state* %17, %struct.dib0700_adapter_state** %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = call i32 @dib0070_wbd_offset(%struct.dvb_frontend* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 1000
  %24 = call i32 @BAND_OF_FREQUENCY(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %30 [
    i32 128, label %26
    i32 129, label %29
  ]

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 750
  store i32 %28, i32* %6, align 4
  br label %33

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %1, %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 250
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %37 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %38, align 8
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 %39(%struct.dvb_frontend* %40, i32 %41)
  %43 = load %struct.dib0700_adapter_state*, %struct.dib0700_adapter_state** %5, align 8
  %44 = getelementptr inbounds %struct.dib0700_adapter_state, %struct.dib0700_adapter_state* %43, i32 0, i32 0
  %45 = bitcast {}** %44 to i32 (%struct.dvb_frontend*)**
  %46 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %45, align 8
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %48 = call i32 %46(%struct.dvb_frontend* %47)
  ret i32 %48
}

declare dso_local i32 @dib0070_wbd_offset(%struct.dvb_frontend*) #1

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @deb_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
