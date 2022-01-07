; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.gs_usb = type { i32, i64* }

@.str = private unnamed_addr constant [21 x i8] c"Disconnect (nodata)\0A\00", align 1
@GS_MAX_INTF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @gs_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_usb*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.gs_usb* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.gs_usb* %6, %struct.gs_usb** %4, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call i32 @usb_set_intfdata(%struct.usb_interface* %7, i32* null)
  %9 = load %struct.gs_usb*, %struct.gs_usb** %4, align 8
  %10 = icmp ne %struct.gs_usb* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %48

15:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GS_MAX_INTF, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.gs_usb*, %struct.gs_usb** %4, align 8
  %22 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.gs_usb*, %struct.gs_usb** %4, align 8
  %31 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gs_destroy_candev(i64 %36)
  br label %38

38:                                               ; preds = %29, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.gs_usb*, %struct.gs_usb** %4, align 8
  %44 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %43, i32 0, i32 0
  %45 = call i32 @usb_kill_anchored_urbs(i32* %44)
  %46 = load %struct.gs_usb*, %struct.gs_usb** %4, align 8
  %47 = call i32 @kfree(%struct.gs_usb* %46)
  br label %48

48:                                               ; preds = %42, %11
  ret void
}

declare dso_local %struct.gs_usb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gs_destroy_candev(i64) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @kfree(%struct.gs_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
