; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_ath10k_usb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ath10k_usb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ath10k_usb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_usb_remove(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ath10k_usb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ath10k_usb* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ath10k_usb* %5, %struct.ath10k_usb** %3, align 8
  %6 = load %struct.ath10k_usb*, %struct.ath10k_usb** %3, align 8
  %7 = icmp ne %struct.ath10k_usb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.ath10k_usb*, %struct.ath10k_usb** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ath10k_core_unregister(i32 %12)
  %14 = load %struct.ath10k_usb*, %struct.ath10k_usb** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ath10k_usb_destroy(i32 %16)
  %18 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %19 = call i32 @interface_to_usbdev(%struct.usb_interface* %18)
  %20 = call i32 @usb_put_dev(i32 %19)
  %21 = load %struct.ath10k_usb*, %struct.ath10k_usb** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k_usb, %struct.ath10k_usb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ath10k_core_destroy(i32 %23)
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.ath10k_usb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @ath10k_core_unregister(i32) #1

declare dso_local i32 @ath10k_usb_destroy(i32) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @ath10k_core_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
