; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.ar9170 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @carl9170_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.ar9170*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.ar9170* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.ar9170* %5, %struct.ar9170** %3, align 8
  %6 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %7 = icmp ne %struct.ar9170* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @WARN_ON(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 0
  %16 = call i32 @wait_for_completion(i32* %15)
  %17 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %18 = call i64 @IS_INITIALIZED(%struct.ar9170* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %22 = call i32 @carl9170_reboot(%struct.ar9170* %21)
  %23 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %24 = call i32 @carl9170_usb_stop(%struct.ar9170* %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %27 = call i32 @carl9170_usb_cancel_urbs(%struct.ar9170* %26)
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = call i32 @carl9170_unregister(%struct.ar9170* %28)
  %30 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %31 = call i32 @usb_set_intfdata(%struct.usb_interface* %30, i32* null)
  %32 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %33 = call i32 @carl9170_release_firmware(%struct.ar9170* %32)
  %34 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %35 = call i32 @carl9170_free(%struct.ar9170* %34)
  br label %36

36:                                               ; preds = %25, %12
  ret void
}

declare dso_local %struct.ar9170* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @IS_INITIALIZED(%struct.ar9170*) #1

declare dso_local i32 @carl9170_reboot(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_stop(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_cancel_urbs(%struct.ar9170*) #1

declare dso_local i32 @carl9170_unregister(%struct.ar9170*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @carl9170_release_firmware(%struct.ar9170*) #1

declare dso_local i32 @carl9170_free(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
