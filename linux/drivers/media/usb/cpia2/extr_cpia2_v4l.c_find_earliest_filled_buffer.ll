; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_find_earliest_filled_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_v4l.c_find_earliest_filled_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@FRAME_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*)* @find_earliest_filled_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_earliest_filled_buffer(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %50, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %8 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %5
  %12 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %13 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FRAME_READY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  br label %48

27:                                               ; preds = %22
  %28 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %37 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %35, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %27
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %11
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %5

53:                                               ; preds = %5
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
