; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-cards.c_cx231xx_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i32 }

@cx231xx_devused = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_release_resources(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  %3 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %4 = call i32 @cx231xx_ir_exit(%struct.cx231xx* %3)
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = call i32 @cx231xx_release_analog_resources(%struct.cx231xx* %5)
  %7 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %8 = call i32 @cx231xx_remove_from_devlist(%struct.cx231xx* %7)
  %9 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %10 = call i32 @cx231xx_dev_uninit(%struct.cx231xx* %9)
  %11 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %12 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %11, i32 0, i32 2
  %13 = call i32 @v4l2_device_unregister(i32* %12)
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = call i32 @cx231xx_unregister_media_device(%struct.cx231xx* %14)
  %16 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_put_dev(i32 %18)
  %20 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clear_bit(i32 %22, i32* @cx231xx_devused)
  ret void
}

declare dso_local i32 @cx231xx_ir_exit(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_release_analog_resources(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_remove_from_devlist(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_dev_uninit(%struct.cx231xx*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @cx231xx_unregister_media_device(%struct.cx231xx*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
