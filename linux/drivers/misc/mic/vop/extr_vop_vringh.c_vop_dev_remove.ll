; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/vop/extr_vop_vringh.c_vop_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_info = type { i32 }
%struct.mic_device_ctrl = type { i64, i64 }
%struct.vop_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vop_device*, i32)*, %struct.mic_bootparam* (%struct.vop_device*)* }
%struct.mic_bootparam = type { i32 }

@wake = common dso_local global i32 0, align 4
@MIC_VIRTIO_PARAM_DEV_REMOVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vop_info*, %struct.mic_device_ctrl*, %struct.vop_device*)* @vop_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vop_dev_remove(%struct.vop_info* %0, %struct.mic_device_ctrl* %1, %struct.vop_device* %2) #0 {
  %4 = alloca %struct.vop_info*, align 8
  %5 = alloca %struct.mic_device_ctrl*, align 8
  %6 = alloca %struct.vop_device*, align 8
  %7 = alloca %struct.mic_bootparam*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vop_info* %0, %struct.vop_info** %4, align 8
  store %struct.mic_device_ctrl* %1, %struct.mic_device_ctrl** %5, align 8
  store %struct.vop_device* %2, %struct.vop_device** %6, align 8
  %11 = load %struct.vop_device*, %struct.vop_device** %6, align 8
  %12 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.mic_bootparam* (%struct.vop_device*)*, %struct.mic_bootparam* (%struct.vop_device*)** %14, align 8
  %16 = load %struct.vop_device*, %struct.vop_device** %6, align 8
  %17 = call %struct.mic_bootparam* %15(%struct.vop_device* %16)
  store %struct.mic_bootparam* %17, %struct.mic_bootparam** %7, align 8
  %18 = load i32, i32* @wake, align 4
  %19 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %18)
  %20 = load i64, i64* @MIC_VIRTIO_PARAM_DEV_REMOVE, align 8
  %21 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %5, align 8
  %22 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.mic_bootparam*, %struct.mic_bootparam** %7, align 8
  %24 = getelementptr inbounds %struct.mic_bootparam, %struct.mic_bootparam* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.vop_device*, %struct.vop_device** %6, align 8
  %30 = getelementptr inbounds %struct.vop_device, %struct.vop_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.vop_device*, i32)*, i32 (%struct.vop_device*, i32)** %32, align 8
  %34 = load %struct.vop_device*, %struct.vop_device** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 %33(%struct.vop_device* %34, i32 %35)
  br label %38

37:                                               ; preds = %3
  br label %55

38:                                               ; preds = %28
  store i32 15, i32* %10, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %10, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32, i32* @wake, align 4
  %45 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %5, align 8
  %46 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @msecs_to_jiffies(i32 1000)
  %49 = call i32 @wait_event_timeout(i32 %44, i64 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %54

53:                                               ; preds = %43
  br label %39

54:                                               ; preds = %52, %39
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %5, align 8
  %57 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.mic_device_ctrl*, %struct.mic_device_ctrl** %5, align 8
  %59 = getelementptr inbounds %struct.mic_device_ctrl, %struct.mic_device_ctrl* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
