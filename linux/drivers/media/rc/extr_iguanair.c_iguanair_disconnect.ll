; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_iguanair.c_iguanair_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.iguanair = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_IN_PACKET = common dso_local global i32 0, align 4
@MAX_OUT_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @iguanair_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iguanair_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.iguanair*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.iguanair* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.iguanair* %5, %struct.iguanair** %3, align 8
  %6 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %7 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rc_unregister_device(i32 %8)
  %10 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %11 = call i32 @usb_set_intfdata(%struct.usb_interface* %10, i32* null)
  %12 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %13 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_kill_urb(i32 %14)
  %16 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %17 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_kill_urb(i32 %18)
  %20 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %21 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_free_urb(i32 %22)
  %24 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %25 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_free_urb(i32 %26)
  %28 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %29 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX_IN_PACKET, align 4
  %32 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %33 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %36 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_free_coherent(i32 %30, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %40 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_OUT_PACKET, align 4
  %43 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %44 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %47 = getelementptr inbounds %struct.iguanair, %struct.iguanair* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_free_coherent(i32 %41, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.iguanair*, %struct.iguanair** %3, align 8
  %51 = call i32 @kfree(%struct.iguanair* %50)
  ret void
}

declare dso_local %struct.iguanair* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iguanair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
