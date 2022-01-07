; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ttusbir = type { i32, i32, i32* }

@NUM_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @ttusbir_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusbir_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttusbir*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.ttusbir* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.ttusbir* %8, %struct.ttusbir** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @NUM_URBS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.ttusbir*, %struct.ttusbir** %5, align 8
  %15 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_kill_urb(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %9

25:                                               ; preds = %9
  %26 = load %struct.ttusbir*, %struct.ttusbir** %5, align 8
  %27 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %26, i32 0, i32 1
  %28 = call i32 @led_classdev_suspend(i32* %27)
  %29 = load %struct.ttusbir*, %struct.ttusbir** %5, align 8
  %30 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @usb_kill_urb(i32 %31)
  ret i32 0
}

declare dso_local %struct.ttusbir* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @led_classdev_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
