; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_firmware_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_firmware_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.hif_device_usb = type { i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"ath9k_htc: Failed to get firmware %s\0A\00", align 1
@hif_usb = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIF_USB_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @ath9k_hif_usb_firmware_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hif_usb_firmware_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hif_device_usb*, align 8
  %6 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.hif_device_usb*
  store %struct.hif_device_usb* %8, %struct.hif_device_usb** %5, align 8
  %9 = load %struct.firmware*, %struct.firmware** %3, align 8
  %10 = icmp ne %struct.firmware* %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %13 = call i32 @ath9k_hif_request_firmware(%struct.hif_device_usb* %12, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %110

17:                                               ; preds = %11
  %18 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %19 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %18, i32 0, i32 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %23 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %28 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %29 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %28, i32 0, i32 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = call i32* @ath9k_htc_hw_alloc(%struct.hif_device_usb* %27, i32* @hif_usb, i32* %31)
  %33 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %34 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %36 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %104

40:                                               ; preds = %26
  %41 = load %struct.firmware*, %struct.firmware** %3, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %45 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.firmware*, %struct.firmware** %3, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %50 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %52 = call i32 @ath9k_hif_usb_dev_init(%struct.hif_device_usb* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %99

56:                                               ; preds = %40
  %57 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %58 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %61 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %60, i32 0, i32 5
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %65 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %70 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %75 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ath9k_htc_hw_init(i32* %59, i32* %63, i32 %68, i32 %73, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %56
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %96

85:                                               ; preds = %56
  %86 = load %struct.firmware*, %struct.firmware** %3, align 8
  %87 = call i32 @release_firmware(%struct.firmware* %86)
  %88 = load i32, i32* @HIF_USB_READY, align 4
  %89 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %90 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %94 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %93, i32 0, i32 1
  %95 = call i32 @complete_all(i32* %94)
  br label %110

96:                                               ; preds = %82
  %97 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %98 = call i32 @ath9k_hif_usb_dev_deinit(%struct.hif_device_usb* %97)
  br label %99

99:                                               ; preds = %96, %55
  %100 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %101 = getelementptr inbounds %struct.hif_device_usb, %struct.hif_device_usb* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @ath9k_htc_hw_free(i32* %102)
  br label %104

104:                                              ; preds = %99, %39
  %105 = load %struct.firmware*, %struct.firmware** %3, align 8
  %106 = call i32 @release_firmware(%struct.firmware* %105)
  br label %107

107:                                              ; preds = %104, %17
  %108 = load %struct.hif_device_usb*, %struct.hif_device_usb** %5, align 8
  %109 = call i32 @ath9k_hif_usb_firmware_fail(%struct.hif_device_usb* %108)
  br label %110

110:                                              ; preds = %107, %85, %16
  ret void
}

declare dso_local i32 @ath9k_hif_request_firmware(%struct.hif_device_usb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32* @ath9k_htc_hw_alloc(%struct.hif_device_usb*, i32*, i32*) #1

declare dso_local i32 @ath9k_hif_usb_dev_init(%struct.hif_device_usb*) #1

declare dso_local i32 @ath9k_htc_hw_init(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @ath9k_hif_usb_dev_deinit(%struct.hif_device_usb*) #1

declare dso_local i32 @ath9k_htc_hw_free(i32*) #1

declare dso_local i32 @ath9k_hif_usb_firmware_fail(%struct.hif_device_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
