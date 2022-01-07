; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_v4l2_enum_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_histo.c_histo_v4l2_enum_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i64, i32 }
%struct.vsp1_histogram = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @histo_v4l2_enum_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histo_v4l2_enum_format(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.vsp1_histogram*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %11, align 8
  store %struct.v4l2_fh* %12, %struct.v4l2_fh** %8, align 8
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vsp1_histogram* @vdev_to_histo(i32 %15)
  store %struct.vsp1_histogram* %16, %struct.vsp1_histogram** %9, align 8
  %17 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %9, align 8
  %26 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21, %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.vsp1_histogram*, %struct.vsp1_histogram** %9, align 8
  %35 = getelementptr inbounds %struct.vsp1_histogram, %struct.vsp1_histogram* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.vsp1_histogram* @vdev_to_histo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
