; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64 }
%struct.vsp1_histogram = type { i32, i32 }

@HISTO_PAD_SINK = common dso_local global i64 0, align 8
@HISTO_MIN_SIZE = common dso_local global i32 0, align 4
@HISTO_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @histo_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histo_set_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.vsp1_histogram*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev* %9)
  store %struct.vsp1_histogram* %10, %struct.vsp1_histogram** %8, align 8
  %11 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HISTO_PAD_SINK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %18 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %19 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %20 = call i32 @histo_get_format(%struct.v4l2_subdev* %17, %struct.v4l2_subdev_pad_config* %18, %struct.v4l2_subdev_format* %19)
  store i32 %20, i32* %4, align 4
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %23 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %24 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %25 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %26 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %8, align 8
  %29 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HISTO_MIN_SIZE, align 4
  %32 = load i32, i32* @HISTO_MIN_SIZE, align 4
  %33 = load i32, i32* @HISTO_MAX_SIZE, align 4
  %34 = load i32, i32* @HISTO_MAX_SIZE, align 4
  %35 = call i32 @vsp1_subdev_set_pad_format(%struct.v4l2_subdev* %22, %struct.v4l2_subdev_pad_config* %23, %struct.v4l2_subdev_format* %24, i32 %27, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %21, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.vsp1_histogram* @subdev_to_histo(%struct.v4l2_subdev*) #1

declare dso_local i32 @histo_get_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @vsp1_subdev_set_pad_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
