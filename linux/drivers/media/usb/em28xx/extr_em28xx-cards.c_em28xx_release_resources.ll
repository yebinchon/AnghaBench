; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i64, i32, i32, i64, i32 }
%struct.usb_device = type { i32 }

@PRIMARY_TS = common dso_local global i64 0, align 8
@em28xx_devused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*)* @em28xx_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em28xx_release_resources(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca %struct.usb_device*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %4 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %5 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.usb_device* @interface_to_usbdev(i32 %6)
  store %struct.usb_device* %7, %struct.usb_device** %3, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %12 = call i32 @em28xx_unregister_media_device(%struct.em28xx* %11)
  %13 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %19 = call i32 @em28xx_i2c_unregister(%struct.em28xx* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %22 = call i32 @em28xx_i2c_unregister(%struct.em28xx* %21, i32 0)
  %23 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %24 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PRIMARY_TS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = call i32 @usb_put_dev(%struct.usb_device* %29)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @em28xx_devused, align 4
  %36 = call i32 @clear_bit(i32 %34, i32 %35)
  %37 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %38 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @em28xx_unregister_media_device(%struct.em28xx*) #1

declare dso_local i32 @em28xx_i2c_unregister(%struct.em28xx*, i32) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
