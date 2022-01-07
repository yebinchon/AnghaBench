; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dsbr100_device = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"dsbr100_start failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"coming out of suspend..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @usb_dsbr100_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dsbr100_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dsbr100_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.dsbr100_device* %5, %struct.dsbr100_device** %3, align 8
  %6 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %7 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %10 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %15 = call i64 @dsbr100_start(%struct.dsbr100_device* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %13, %1
  %22 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %23 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = call i32 @dev_info(i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.dsbr100_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dsbr100_start(%struct.dsbr100_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
