; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_get_frame_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_get_frame_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_frame_desc = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.m5mols_info = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M5MOLS_RESTYPE_CAPTURE = common dso_local global i64 0, align 8
@V4L2_MBUS_FRAME_DESC_FL_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)* @m5mols_get_frame_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_get_frame_desc(%struct.v4l2_subdev* %0, i32 %1, %struct.v4l2_mbus_frame_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_mbus_frame_desc*, align 8
  %8 = alloca %struct.m5mols_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_mbus_frame_desc* %2, %struct.v4l2_mbus_frame_desc** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %9)
  store %struct.m5mols_info* %10, %struct.m5mols_info** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %15 = icmp eq %struct.v4l2_mbus_frame_desc* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %55

19:                                               ; preds = %13
  %20 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %21 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %24 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32 %26, i32* %31, align 4
  %32 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %33 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i64, i64* @M5MOLS_RESTYPE_CAPTURE, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %45 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* @V4L2_MBUS_FRAME_DESC_FL_LEN_MAX, align 4
  %48 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  %53 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %19, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
