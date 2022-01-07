; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_vidioc_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_fmt = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32 }

@NUM_FORMATS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.rga_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vidioc_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.rga_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NUM_FORMATS, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %28

17:                                               ; preds = %3
  %18 = load %struct.rga_fmt*, %struct.rga_fmt** @formats, align 8
  %19 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %18, i64 %21
  store %struct.rga_fmt* %22, %struct.rga_fmt** %8, align 8
  %23 = load %struct.rga_fmt*, %struct.rga_fmt** %8, align 8
  %24 = getelementptr inbounds %struct.rga_fmt, %struct.rga_fmt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %17, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
