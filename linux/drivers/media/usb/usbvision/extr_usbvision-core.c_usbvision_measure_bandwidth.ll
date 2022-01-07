; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_measure_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_measure_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*)* @usbvision_measure_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_measure_bandwidth(%struct.usb_usbvision* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_usbvision*, align 8
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  %4 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %5 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %10 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %15 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %20 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %25 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %28 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %31 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = sdiv i32 %26, %33
  %35 = mul nsw i32 %34, 100
  %36 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %37 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  %40 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %41 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %23, %18, %13
  %43 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %44 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %46 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %45, i32 0, i32 4
  store i32 0, i32* %46, align 4
  %47 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %48 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %50 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %49, i32 0, i32 5
  store i32 0, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %42, %8
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
