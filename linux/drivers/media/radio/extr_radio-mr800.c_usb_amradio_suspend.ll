; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_usb_amradio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_usb_amradio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.amradio_device = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"going into suspend..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @usb_amradio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_amradio_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amradio_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %7 = call i32 @usb_get_intfdata(%struct.usb_interface* %6)
  %8 = call %struct.amradio_device* @to_amradio_dev(i32 %7)
  store %struct.amradio_device* %8, %struct.amradio_device** %5, align 8
  %9 = load %struct.amradio_device*, %struct.amradio_device** %5, align 8
  %10 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.amradio_device*, %struct.amradio_device** %5, align 8
  %13 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.amradio_device*, %struct.amradio_device** %5, align 8
  %18 = call i32 @amradio_set_mute(%struct.amradio_device* %17, i32 1)
  %19 = load %struct.amradio_device*, %struct.amradio_device** %5, align 8
  %20 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.amradio_device*, %struct.amradio_device** %5, align 8
  %23 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %22, i32 0, i32 1
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.amradio_device* @to_amradio_dev(i32) #1

declare dso_local i32 @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amradio_set_mute(%struct.amradio_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
