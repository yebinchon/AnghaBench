; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-dvb.c_unregister_dvb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-dvb.c_unregister_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { %struct.tm6000_dvb* }
%struct.tm6000_dvb = type { i32, i32, i32, i32, i64, %struct.urb* }
%struct.urb = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm6000_core*)* @unregister_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_dvb(%struct.tm6000_core* %0) #0 {
  %2 = alloca %struct.tm6000_core*, align 8
  %3 = alloca %struct.tm6000_dvb*, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %2, align 8
  %5 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %6 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %5, i32 0, i32 0
  %7 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %6, align 8
  store %struct.tm6000_dvb* %7, %struct.tm6000_dvb** %3, align 8
  %8 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %9 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %8, i32 0, i32 5
  %10 = load %struct.urb*, %struct.urb** %9, align 8
  %11 = icmp ne %struct.urb* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %14 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %13, i32 0, i32 5
  %15 = load %struct.urb*, %struct.urb** %14, align 8
  store %struct.urb* %15, %struct.urb** %4, align 8
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.urb*, %struct.urb** %4, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.urb*, %struct.urb** %4, align 8
  %23 = call i32 @usb_unlink_urb(%struct.urb* %22)
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = call i32 @usb_free_urb(%struct.urb* %24)
  br label %26

26:                                               ; preds = %12, %1
  %27 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %28 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %33 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dvb_unregister_frontend(i64 %34)
  %36 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %37 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @dvb_frontend_detach(i64 %38)
  br label %40

40:                                               ; preds = %31, %26
  %41 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %42 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %41, i32 0, i32 3
  %43 = call i32 @dvb_dmxdev_release(i32* %42)
  %44 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %45 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %44, i32 0, i32 2
  %46 = call i32 @dvb_dmx_release(i32* %45)
  %47 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %48 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %47, i32 0, i32 1
  %49 = call i32 @dvb_unregister_adapter(i32* %48)
  %50 = load %struct.tm6000_dvb*, %struct.tm6000_dvb** %3, align 8
  %51 = getelementptr inbounds %struct.tm6000_dvb, %struct.tm6000_dvb* %50, i32 0, i32 0
  %52 = call i32 @mutex_destroy(i32* %51)
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_frontend_detach(i64) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_dmx_release(i32*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
