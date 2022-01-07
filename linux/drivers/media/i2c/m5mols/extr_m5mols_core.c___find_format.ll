; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c___find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c___find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.m5mols_info = type { %struct.v4l2_mbus_framefmt*, i32 }
%struct.v4l2_subdev_pad_config = type { i32 }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_mbus_framefmt* (%struct.m5mols_info*, %struct.v4l2_subdev_pad_config*, i32, i32)* @__find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_mbus_framefmt* @__find_format(%struct.m5mols_info* %0, %struct.v4l2_subdev_pad_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.m5mols_info*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m5mols_info* %0, %struct.m5mols_info** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %15 = icmp ne %struct.v4l2_subdev_pad_config* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.m5mols_info*, %struct.m5mols_info** %6, align 8
  %18 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %17, i32 0, i32 1
  %19 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %20 = call %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32* %18, %struct.v4l2_subdev_pad_config* %19, i32 0)
  br label %22

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi %struct.v4l2_mbus_framefmt* [ %20, %16 ], [ null, %21 ]
  store %struct.v4l2_mbus_framefmt* %23, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %31

24:                                               ; preds = %4
  %25 = load %struct.m5mols_info*, %struct.m5mols_info** %6, align 8
  %26 = getelementptr inbounds %struct.m5mols_info, %struct.m5mols_info* %25, i32 0, i32 0
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i64 %29
  store %struct.v4l2_mbus_framefmt* %30, %struct.v4l2_mbus_framefmt** %5, align 8
  br label %31

31:                                               ; preds = %24, %22
  %32 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  ret %struct.v4l2_mbus_framefmt* %32
}

declare dso_local %struct.v4l2_mbus_framefmt* @v4l2_subdev_get_try_format(i32*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
