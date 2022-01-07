; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-if.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.pwc_device = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@leds = common dso_local global i32* null, align 8
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwc_device*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = call %struct.pwc_device* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.pwc_device* %9, %struct.pwc_device** %6, align 8
  %10 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %19 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ERESTARTSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %53

25:                                               ; preds = %17
  %26 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %27 = call i32 @pwc_camera_power(%struct.pwc_device* %26, i32 1)
  %28 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %29 = load i32*, i32** @leds, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @leds, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pwc_set_leds(%struct.pwc_device* %28, i32 %31, i32 %34)
  %36 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %37 = call i32 @pwc_isoc_init(%struct.pwc_device* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %25
  %41 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %42 = call i32 @pwc_set_leds(%struct.pwc_device* %41, i32 0, i32 0)
  %43 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %44 = call i32 @pwc_camera_power(%struct.pwc_device* %43, i32 0)
  %45 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %46 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %47 = call i32 @pwc_cleanup_queued_bufs(%struct.pwc_device* %45, i32 %46)
  br label %48

48:                                               ; preds = %40, %25
  %49 = load %struct.pwc_device*, %struct.pwc_device** %6, align 8
  %50 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %22, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pwc_device* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pwc_camera_power(%struct.pwc_device*, i32) #1

declare dso_local i32 @pwc_set_leds(%struct.pwc_device*, i32, i32) #1

declare dso_local i32 @pwc_isoc_init(%struct.pwc_device*) #1

declare dso_local i32 @pwc_cleanup_queued_bufs(%struct.pwc_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
