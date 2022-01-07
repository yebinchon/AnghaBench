; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.kaweth_device = type { i32, i32, i32 }

@KAWETH_STATUS_SUSPENDING = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @kaweth_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.kaweth_device*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %7 = call %struct.kaweth_device* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.kaweth_device* %7, %struct.kaweth_device** %4, align 8
  %8 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %9 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @KAWETH_STATUS_SUSPENDING, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %15 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %19 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %23 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %29 = load i32, i32* @GFP_NOIO, align 4
  %30 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %28, i32 %29)
  %31 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %32 = load i32, i32* @GFP_NOIO, align 4
  %33 = call i32 @kaweth_resubmit_int_urb(%struct.kaweth_device* %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.kaweth_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device*, i32) #1

declare dso_local i32 @kaweth_resubmit_int_urb(%struct.kaweth_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
