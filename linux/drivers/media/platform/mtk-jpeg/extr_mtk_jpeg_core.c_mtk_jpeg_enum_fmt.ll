; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_fmt = type { i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_jpeg_fmt*, i32, %struct.v4l2_fmtdesc*, i32)* @mtk_jpeg_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_enum_fmt(%struct.mtk_jpeg_fmt* %0, i32 %1, %struct.v4l2_fmtdesc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_jpeg_fmt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_fmtdesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtk_jpeg_fmt* %0, %struct.mtk_jpeg_fmt** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %37, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %17, i64 %19
  %21 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %16
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %40

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %12

40:                                               ; preds = %32, %12
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %56

47:                                               ; preds = %40
  %48 = load %struct.mtk_jpeg_fmt*, %struct.mtk_jpeg_fmt** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %48, i64 %50
  %52 = getelementptr inbounds %struct.mtk_jpeg_fmt, %struct.mtk_jpeg_fmt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %44
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
