; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.r8152 = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)* }
%struct.r8152.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @rtl8152_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8152_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.r8152*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.r8152* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.r8152* %5, %struct.r8152** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.r8152*, %struct.r8152** %3, align 8
  %9 = icmp ne %struct.r8152* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.r8152*, %struct.r8152** %3, align 8
  %12 = call i32 @rtl_set_unplug(%struct.r8152* %11)
  %13 = load %struct.r8152*, %struct.r8152** %3, align 8
  %14 = getelementptr inbounds %struct.r8152, %struct.r8152* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @unregister_netdev(i32 %15)
  %17 = load %struct.r8152*, %struct.r8152** %3, align 8
  %18 = getelementptr inbounds %struct.r8152, %struct.r8152* %17, i32 0, i32 3
  %19 = call i32 @tasklet_kill(i32* %18)
  %20 = load %struct.r8152*, %struct.r8152** %3, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 2
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.r8152*, %struct.r8152** %3, align 8
  %24 = getelementptr inbounds %struct.r8152, %struct.r8152* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %25, align 8
  %27 = load %struct.r8152*, %struct.r8152** %3, align 8
  %28 = bitcast %struct.r8152* %27 to %struct.r8152.0*
  %29 = call i32 %26(%struct.r8152.0* %28)
  %30 = load %struct.r8152*, %struct.r8152** %3, align 8
  %31 = getelementptr inbounds %struct.r8152, %struct.r8152* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @free_netdev(i32 %32)
  br label %34

34:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.r8152* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @rtl_set_unplug(%struct.r8152*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
