; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_set_frame_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c_m5mols_set_frame_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_frame_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.m5mols_info = type { i32, %struct.TYPE_3__, %struct.v4l2_mbus_framefmt* }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@M5MOLS_RESTYPE_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MBUS_FRAME_DESC_FL_LEN_MAX = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@M5MOLS_MAIN_JPEG_SIZE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, %struct.v4l2_mbus_frame_desc*)* @m5mols_set_frame_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m5mols_set_frame_desc(%struct.v4l2_subdev* %0, i32 %1, %struct.v4l2_mbus_frame_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_mbus_frame_desc*, align 8
  %8 = alloca %struct.m5mols_info*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_mbus_frame_desc* %2, %struct.v4l2_mbus_frame_desc** %7, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %11 = call %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev* %10)
  store %struct.m5mols_info* %11, %struct.m5mols_info** %8, align 8
  %12 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %13 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %12, i32 0, i32 2
  %14 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %15 = load i64, i64* @M5MOLS_RESTYPE_CAPTURE, align 8
  %16 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %14, i64 %15
  store %struct.v4l2_mbus_framefmt* %16, %struct.v4l2_mbus_framefmt** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %21 = icmp eq %struct.v4l2_mbus_frame_desc* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %70

25:                                               ; preds = %19
  %26 = load i32, i32* @V4L2_MBUS_FRAME_DESC_FL_LEN_MAX, align 4
  %27 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %26, i32* %31, align 4
  %32 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @u32, align 4
  %35 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load i32, i32* @M5MOLS_MAIN_JPEG_SIZE_MAX, align 4
  %49 = call i32 @clamp_t(i32 %34, i32 %40, i32 %47, i32 %48)
  %50 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %56 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.v4l2_mbus_frame_desc*, %struct.v4l2_mbus_frame_desc** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, %struct.v4l2_mbus_frame_desc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %65 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.m5mols_info*, %struct.m5mols_info** %8, align 8
  %68 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %25, %22
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.m5mols_info* @to_m5mols(%struct.v4l2_subdev*) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
