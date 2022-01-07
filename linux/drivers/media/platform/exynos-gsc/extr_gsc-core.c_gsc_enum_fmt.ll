; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-core.c_gsc_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.gsc_fmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gsc_enum_fmt(%struct.v4l2_fmtdesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_fmtdesc*, align 8
  %4 = alloca %struct.gsc_fmt*, align 8
  store %struct.v4l2_fmtdesc* %0, %struct.v4l2_fmtdesc** %3, align 8
  %5 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.gsc_fmt* @find_fmt(i32* null, i32* null, i32 %7)
  store %struct.gsc_fmt* %8, %struct.gsc_fmt** %4, align 8
  %9 = load %struct.gsc_fmt*, %struct.gsc_fmt** %4, align 8
  %10 = icmp ne %struct.gsc_fmt* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.gsc_fmt*, %struct.gsc_fmt** %4, align 8
  %16 = getelementptr inbounds %struct.gsc_fmt, %struct.gsc_fmt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.gsc_fmt* @find_fmt(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
