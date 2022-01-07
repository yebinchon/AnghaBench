; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-core.c_stk1160_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-core.c_stk1160_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.stk1160 = type { i32, i32, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @stk1160_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1160_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.stk1160*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.stk1160* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.stk1160* %5, %struct.stk1160** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %9 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %12 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %15 = call i32 @stk1160_uninit_isoc(%struct.stk1160* %14)
  %16 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %17 = call i32 @stk1160_clear_queue(%struct.stk1160* %16)
  %18 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %19 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %18, i32 0, i32 4
  %20 = call i32 @video_unregister_device(i32* %19)
  %21 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %22 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %21, i32 0, i32 0
  %23 = call i32 @v4l2_device_disconnect(i32* %22)
  %24 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %25 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %27 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %26, i32 0, i32 2
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %30 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %33 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %32, i32 0, i32 0
  %34 = call i32 @v4l2_device_put(i32* %33)
  ret void
}

declare dso_local %struct.stk1160* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @stk1160_uninit_isoc(%struct.stk1160*) #1

declare dso_local i32 @stk1160_clear_queue(%struct.stk1160*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_device_disconnect(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
