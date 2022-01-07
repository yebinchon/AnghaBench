; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_4__*, %struct.dibusb_state* }
%struct.TYPE_4__ = type { i32 }
%struct.dibusb_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb_pid_filter(%struct.dvb_usb_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_usb_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dibusb_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %10, i32 0, i32 1
  %12 = load %struct.dibusb_state*, %struct.dibusb_state** %11, align 8
  %13 = icmp ne %struct.dibusb_state* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %4
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 1
  %17 = load %struct.dibusb_state*, %struct.dibusb_state** %16, align 8
  store %struct.dibusb_state* %17, %struct.dibusb_state** %9, align 8
  %18 = load %struct.dibusb_state*, %struct.dibusb_state** %9, align 8
  %19 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %20, align 8
  %22 = icmp ne i32 (i32, i32, i32, i32)* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  %24 = load %struct.dibusb_state*, %struct.dibusb_state** %9, align 8
  %25 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 %27(i32 %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %23, %14
  br label %39

39:                                               ; preds = %38, %4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
