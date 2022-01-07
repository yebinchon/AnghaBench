; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_scratch_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_scratch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i64, i64, i64, i64 }

@DBG_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@isoc_state_no_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_usbvision*)* @scratch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scratch_reset(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  %3 = load i32, i32* @DBG_SCRATCH, align 4
  %4 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %6 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %10 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %12 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @isoc_state_no_frame, align 4
  %14 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %15 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
