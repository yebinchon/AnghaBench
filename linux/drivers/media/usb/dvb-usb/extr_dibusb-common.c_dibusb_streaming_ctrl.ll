; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_streaming_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dibusb-common.c_dibusb_streaming_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_4__*, %struct.dibusb_state* }
%struct.TYPE_4__ = type { i32 }
%struct.dibusb_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32, i32)* }

@.str = private unnamed_addr constant [47 x i8] c"error while controlling the fifo of the demod.\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dibusb_streaming_ctrl(%struct.dvb_usb_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dibusb_state*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %7, i32 0, i32 1
  %9 = load %struct.dibusb_state*, %struct.dibusb_state** %8, align 8
  %10 = icmp ne %struct.dibusb_state* %9, null
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %12, i32 0, i32 1
  %14 = load %struct.dibusb_state*, %struct.dibusb_state** %13, align 8
  store %struct.dibusb_state* %14, %struct.dibusb_state** %6, align 8
  %15 = load %struct.dibusb_state*, %struct.dibusb_state** %6, align 8
  %16 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64 (i32, i32)*, i64 (i32, i32)** %17, align 8
  %19 = icmp ne i64 (i32, i32)* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %11
  %21 = load %struct.dibusb_state*, %struct.dibusb_state** %6, align 8
  %22 = getelementptr inbounds %struct.dibusb_state, %struct.dibusb_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64 (i32, i32)*, i64 (i32, i32)** %23, align 8
  %25 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 %24(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = call i32 @err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %11
  br label %40

40:                                               ; preds = %39, %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
