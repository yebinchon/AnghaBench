; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_audio_free_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_audio_free_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.urb**, %struct.urb** }
%struct.urb = type { i32, i32 }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_audio_free_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_audio_free_urb(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.usb_device* @interface_to_usbdev(i32 %8)
  store %struct.usb_device* %9, %struct.usb_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %10
  %18 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load %struct.urb**, %struct.urb*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.urb*, %struct.urb** %21, i64 %23
  %25 = load %struct.urb*, %struct.urb** %24, align 8
  store %struct.urb* %25, %struct.urb** %5, align 8
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = icmp ne %struct.urb* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %48

29:                                               ; preds = %17
  %30 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %35 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load %struct.urb**, %struct.urb*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.urb*, %struct.urb** %37, i64 %39
  %41 = load %struct.urb*, %struct.urb** %40, align 8
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @usb_free_coherent(%struct.usb_device* %30, i32 %33, %struct.urb* %41, i32 %44)
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = call i32 @usb_free_urb(%struct.urb* %46)
  br label %48

48:                                               ; preds = %29, %28
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load %struct.urb**, %struct.urb*** %54, align 8
  %56 = call i32 @kfree(%struct.urb** %55)
  %57 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.urb**, %struct.urb*** %59, align 8
  %61 = call i32 @kfree(%struct.urb** %60)
  %62 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %63 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, %struct.urb*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
