; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_firmware_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c_carl9170_usb_firmware_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.usb_interface* }
%struct.usb_interface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*)* @carl9170_usb_firmware_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_usb_firmware_finish(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %5 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %6 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %5, i32 0, i32 1
  %7 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  store %struct.usb_interface* %7, %struct.usb_interface** %3, align 8
  %8 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %9 = call i32 @carl9170_parse_firmware(%struct.ar9170* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %15 = call i32 @carl9170_usb_init_device(%struct.ar9170* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %13
  %20 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %21 = call i32 @carl9170_register(%struct.ar9170* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %23 = call i32 @carl9170_usb_stop(%struct.ar9170* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 0
  %30 = call i32 @complete(i32* %29)
  %31 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %32 = call i32 @usb_put_intf(%struct.usb_interface* %31)
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %35 = call i32 @carl9170_usb_cancel_urbs(%struct.ar9170* %34)
  br label %36

36:                                               ; preds = %33, %18, %12
  %37 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %38 = call i32 @carl9170_release_firmware(%struct.ar9170* %37)
  %39 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %40 = call i32 @carl9170_usb_firmware_failed(%struct.ar9170* %39)
  br label %41

41:                                               ; preds = %36, %27
  ret void
}

declare dso_local i32 @carl9170_parse_firmware(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_init_device(%struct.ar9170*) #1

declare dso_local i32 @carl9170_register(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_stop(%struct.ar9170*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @carl9170_usb_cancel_urbs(%struct.ar9170*) #1

declare dso_local i32 @carl9170_release_firmware(%struct.ar9170*) #1

declare dso_local i32 @carl9170_usb_firmware_failed(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
