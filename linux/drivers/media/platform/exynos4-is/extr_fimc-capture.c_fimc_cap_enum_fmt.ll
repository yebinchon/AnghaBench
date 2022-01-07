; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-capture.c_fimc_cap_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.fimc_fmt = type { i32 }

@FMT_FLAGS_CAM = common dso_local global i32 0, align 4
@FMT_FLAGS_M2M = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @fimc_cap_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_cap_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.fimc_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load i32, i32* @FMT_FLAGS_CAM, align 4
  %10 = load i32, i32* @FMT_FLAGS_M2M, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fimc_fmt* @fimc_find_format(i32* null, i32* null, i32 %11, i32 %14)
  store %struct.fimc_fmt* %15, %struct.fimc_fmt** %8, align 8
  %16 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  %17 = icmp ne %struct.fimc_fmt* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  %23 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.fimc_fmt* @fimc_find_format(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
