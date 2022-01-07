; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_v4l2_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_v4l2_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_meta_format }
%struct.v4l2_meta_format = type { i32, i32 }
%struct.vsp1_histogram = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @histo_v4l2_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histo_v4l2_get_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.vsp1_histogram*, align 8
  %10 = alloca %struct.v4l2_meta_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %12, align 8
  store %struct.v4l2_fh* %13, %struct.v4l2_fh** %8, align 8
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %15 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.vsp1_histogram* @vdev_to_histo(i32 %16)
  store %struct.vsp1_histogram* %17, %struct.vsp1_histogram** %9, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.v4l2_meta_format* %20, %struct.v4l2_meta_format** %10, align 8
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %9, align 8
  %25 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %45

32:                                               ; preds = %3
  %33 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %10, align 8
  %34 = call i32 @memset(%struct.v4l2_meta_format* %33, i32 0, i32 8)
  %35 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %9, align 8
  %36 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %10, align 8
  %39 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %9, align 8
  %41 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_meta_format*, %struct.v4l2_meta_format** %10, align 8
  %44 = getelementptr inbounds %struct.v4l2_meta_format, %struct.v4l2_meta_format* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %32, %29
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.vsp1_histogram* @vdev_to_histo(i32) #1

declare dso_local i32 @memset(%struct.v4l2_meta_format*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
