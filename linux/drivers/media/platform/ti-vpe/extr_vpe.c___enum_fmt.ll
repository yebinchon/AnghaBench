; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c___enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_fmt = type { i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }

@vpe_formats = common dso_local global %struct.vpe_fmt* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fmtdesc*, i32)* @__enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__enum_fmt(%struct.v4l2_fmtdesc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fmtdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpe_fmt*, align 8
  store %struct.v4l2_fmtdesc* %0, %struct.v4l2_fmtdesc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vpe_fmt* null, %struct.vpe_fmt** %8, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.vpe_fmt*, %struct.vpe_fmt** @vpe_formats, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.vpe_fmt* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load %struct.vpe_fmt*, %struct.vpe_fmt** @vpe_formats, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %15, i64 %17
  %19 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.vpe_fmt*, %struct.vpe_fmt** @vpe_formats, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %31, i64 %33
  store %struct.vpe_fmt* %34, %struct.vpe_fmt** %8, align 8
  br label %42

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %9

42:                                               ; preds = %30, %9
  %43 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %44 = icmp ne %struct.vpe_fmt* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %54

48:                                               ; preds = %42
  %49 = load %struct.vpe_fmt*, %struct.vpe_fmt** %8, align 8
  %50 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %4, align 8
  %53 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ARRAY_SIZE(%struct.vpe_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
