; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dev_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dev_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.redrat3_dev = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @redrat3_dev_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redrat3_dev_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.redrat3_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %6 = call %struct.redrat3_dev* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.redrat3_dev* %6, %struct.redrat3_dev** %4, align 8
  %7 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %8 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i64 @usb_submit_urb(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %18 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i64 @usb_submit_urb(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %28 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %27, i32 0, i32 0
  %29 = call i32 @led_classdev_resume(i32* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %23, %13
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.redrat3_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @led_classdev_resume(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
