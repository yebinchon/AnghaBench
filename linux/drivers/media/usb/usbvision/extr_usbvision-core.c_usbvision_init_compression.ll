; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_init_compression.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_init_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*)* @usbvision_init_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_init_compression(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  %3 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %4 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 8
  %5 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %6 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %5, i32 0, i32 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %8 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %10 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %12 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %11, i32 0, i32 1
  store i32 50, i32* %12, align 4
  %13 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %14 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %13, i32 0, i32 2
  store i32 -1, i32* %14, align 8
  %15 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %16 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %18 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %17, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
