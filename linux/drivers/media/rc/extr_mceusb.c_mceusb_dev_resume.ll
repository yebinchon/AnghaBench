; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_dev_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_dev_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.mceusb_dev = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @mceusb_dev_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mceusb_dev_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.mceusb_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %6 = call %struct.mceusb_dev* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.mceusb_dev* %6, %struct.mceusb_dev** %4, align 8
  %7 = load %struct.mceusb_dev*, %struct.mceusb_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.mceusb_dev*, %struct.mceusb_dev** %4, align 8
  %12 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i64 @usb_submit_urb(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.mceusb_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
