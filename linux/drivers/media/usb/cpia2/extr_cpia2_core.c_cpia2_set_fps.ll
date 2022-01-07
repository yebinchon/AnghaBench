; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_set_fps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_cpia2_set_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@DEVICE_STV_672 = common dso_local global i64 0, align 8
@CPIA2_VP_SENSOR_FLAGS_500 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPIA2_CMD_FRAMERATE_REQ = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_set_fps(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %29 [
    i32 130, label %8
    i32 131, label %8
    i32 132, label %28
    i32 133, label %28
    i32 128, label %28
    i32 129, label %28
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %10 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DEVICE_STV_672, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %18 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CPIA2_VP_SENSOR_FLAGS_500, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %16, %8
  br label %28

28:                                               ; preds = %2, %2, %2, %2, %27
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %60

32:                                               ; preds = %28
  %33 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %34 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEVICE_STV_672, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 132
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %40, %32
  %45 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %46 = load i32, i32* @CPIA2_CMD_FRAMERATE_REQ, align 4
  %47 = load i32, i32* @TRANSFER_WRITE, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @cpia2_do_command(%struct.camera_data* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %55 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %29, %24
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
