; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_notify_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_notify_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { %struct.v4l2_device* }
%struct.v4l2_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.ceu_device = type { i32 }
%struct.ceu_subdev = type { %struct.v4l2_subdev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @ceu_notify_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_notify_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca %struct.v4l2_async_notifier*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_async_subdev*, align 8
  %7 = alloca %struct.v4l2_device*, align 8
  %8 = alloca %struct.ceu_device*, align 8
  %9 = alloca %struct.ceu_subdev*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %4, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %6, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %10, i32 0, i32 0
  %12 = load %struct.v4l2_device*, %struct.v4l2_device** %11, align 8
  store %struct.v4l2_device* %12, %struct.v4l2_device** %7, align 8
  %13 = load %struct.v4l2_device*, %struct.v4l2_device** %7, align 8
  %14 = call %struct.ceu_device* @v4l2_to_ceu(%struct.v4l2_device* %13)
  store %struct.ceu_device* %14, %struct.ceu_device** %8, align 8
  %15 = load %struct.v4l2_async_subdev*, %struct.v4l2_async_subdev** %6, align 8
  %16 = call %struct.ceu_subdev* @to_ceu_subdev(%struct.v4l2_async_subdev* %15)
  store %struct.ceu_subdev* %16, %struct.ceu_subdev** %9, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %18 = load %struct.ceu_subdev*, %struct.ceu_subdev** %9, align 8
  %19 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %18, i32 0, i32 0
  store %struct.v4l2_subdev* %17, %struct.v4l2_subdev** %19, align 8
  %20 = load %struct.ceu_device*, %struct.ceu_device** %8, align 8
  %21 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  ret i32 0
}

declare dso_local %struct.ceu_device* @v4l2_to_ceu(%struct.v4l2_device*) #1

declare dso_local %struct.ceu_subdev* @to_ceu_subdev(%struct.v4l2_async_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
