; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-dev-allocator.c_media_device_usb_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mc/extr_mc-dev-allocator.c_media_device_usb_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media_device = type { i32 }
%struct.usb_device = type { i32, i32 }
%struct.module = type { i32 }

@media_device_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.media_device* @media_device_usb_allocate(%struct.usb_device* %0, i8* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.media_device*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.media_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  %9 = call i32 @mutex_lock(i32* @media_device_lock)
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 1
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.module*, %struct.module** %7, align 8
  %14 = call %struct.media_device* @__media_device_get(i32* %11, i8* %12, %struct.module* %13)
  store %struct.media_device* %14, %struct.media_device** %8, align 8
  %15 = load %struct.media_device*, %struct.media_device** %8, align 8
  %16 = icmp ne %struct.media_device* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = call i32 @mutex_unlock(i32* @media_device_lock)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.media_device* @ERR_PTR(i32 %20)
  store %struct.media_device* %21, %struct.media_device** %4, align 8
  br label %38

22:                                               ; preds = %3
  %23 = load %struct.media_device*, %struct.media_device** %8, align 8
  %24 = getelementptr inbounds %struct.media_device, %struct.media_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.media_device*, %struct.media_device** %8, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @__media_device_usb_init(%struct.media_device* %28, %struct.usb_device* %29, i32 %32, i8* %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = call i32 @mutex_unlock(i32* @media_device_lock)
  %37 = load %struct.media_device*, %struct.media_device** %8, align 8
  store %struct.media_device* %37, %struct.media_device** %4, align 8
  br label %38

38:                                               ; preds = %35, %17
  %39 = load %struct.media_device*, %struct.media_device** %4, align 8
  ret %struct.media_device* %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.media_device* @__media_device_get(i32*, i8*, %struct.module*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.media_device* @ERR_PTR(i32) #1

declare dso_local i32 @__media_device_usb_init(%struct.media_device*, %struct.usb_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
