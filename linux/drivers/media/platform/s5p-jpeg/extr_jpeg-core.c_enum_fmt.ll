; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.s5p_jpeg_fmt = type { i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_fmt*, i32, %struct.v4l2_fmtdesc*, i32)* @enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_fmt(%struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_fmt* %1, i32 %2, %struct.v4l2_fmtdesc* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5p_jpeg_ctx*, align 8
  %8 = alloca %struct.s5p_jpeg_fmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_fmtdesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %7, align 8
  store %struct.s5p_jpeg_fmt* %1, %struct.s5p_jpeg_fmt** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.v4l2_fmtdesc* %3, %struct.v4l2_fmtdesc** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %57, %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %8, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %27, i64 %29
  %31 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %26
  %37 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %37, i64 %39
  %41 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %10, align 8
  %49 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %60

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %36, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %22

60:                                               ; preds = %52, %22
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %76

67:                                               ; preds = %60
  %68 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %68, i64 %70
  %72 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %10, align 8
  %75 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %67, %64
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
