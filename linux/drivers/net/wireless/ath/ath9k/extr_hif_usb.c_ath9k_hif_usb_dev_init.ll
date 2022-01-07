; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hif_device_usb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"ath9k_htc: Firmware - %s download failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ath9k_htc: Unable to allocate URBs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hif_device_usb*)* @ath9k_hif_usb_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_hif_usb_dev_init(%struct.hif_device_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hif_device_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.hif_device_usb* %0, %struct.hif_device_usb** %3, align 8
  %5 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %6 = call i32 @ath9k_hif_usb_download_fw(%struct.hif_device_usb* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %11 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %15 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %21 = call i32 @ath9k_hif_usb_alloc_urbs(%struct.hif_device_usb* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.hif_device_usb*, %struct.hif_device_usb** %3, align 8
  %26 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %24, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ath9k_hif_usb_download_fw(%struct.hif_device_usb*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ath9k_hif_usb_alloc_urbs(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
