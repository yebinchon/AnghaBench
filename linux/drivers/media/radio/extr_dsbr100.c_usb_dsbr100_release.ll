; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_dsbr100.c_usb_dsbr100_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_device = type { i32 }
%struct.dsbr100_device = type { %struct.dsbr100_device*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_device*)* @usb_dsbr100_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_dsbr100_release(%struct.v4l2_device* %0) #0 {
  %2 = alloca %struct.v4l2_device*, align 8
  %3 = alloca %struct.dsbr100_device*, align 8
  store %struct.v4l2_device* %0, %struct.v4l2_device** %2, align 8
  %4 = load %struct.v4l2_device*, %struct.v4l2_device** %2, align 8
  %5 = call %struct.dsbr100_device* @v4l2_dev_to_radio(%struct.v4l2_device* %4)
  store %struct.dsbr100_device* %5, %struct.dsbr100_device** %3, align 8
  %6 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %7 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %6, i32 0, i32 2
  %8 = call i32 @v4l2_ctrl_handler_free(i32* %7)
  %9 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %10 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %9, i32 0, i32 1
  %11 = call i32 @v4l2_device_unregister(i32* %10)
  %12 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %13 = getelementptr inbounds %struct.dsbr100_device, %struct.dsbr100_device* %12, i32 0, i32 0
  %14 = load %struct.dsbr100_device*, %struct.dsbr100_device** %13, align 8
  %15 = call i32 @kfree(%struct.dsbr100_device* %14)
  %16 = load %struct.dsbr100_device*, %struct.dsbr100_device** %3, align 8
  %17 = call i32 @kfree(%struct.dsbr100_device* %16)
  ret void
}

declare dso_local %struct.dsbr100_device* @v4l2_dev_to_radio(%struct.v4l2_device*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.dsbr100_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
