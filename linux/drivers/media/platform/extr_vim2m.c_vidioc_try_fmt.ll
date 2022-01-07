; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.vim2m_fmt = type { i32 }

@MIN_H = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_format*, %struct.vim2m_fmt*)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.v4l2_format* %0, %struct.vim2m_fmt* %1) #0 {
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.vim2m_fmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store %struct.vim2m_fmt* %1, %struct.vim2m_fmt** %4, align 8
  %7 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MIN_H, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @MIN_H, align 4
  %16 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MAX_H, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i32, i32* @MAX_H, align 4
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %20
  br label %35

35:                                               ; preds = %34, %14
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MIN_W, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* @MIN_W, align 4
  %45 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %46 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  br label %64

49:                                               ; preds = %35
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAX_W, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* @MAX_W, align 4
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %49
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %66 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @get_alignment(i32 %69, i32* %5, i32* %6)
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 1
  %73 = xor i32 %72, -1
  %74 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %75 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 1
  %82 = xor i32 %81, -1
  %83 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %90 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %4, align 8
  %95 = getelementptr inbounds %struct.vim2m_fmt, %struct.vim2m_fmt* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = ashr i32 %97, 3
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 4
  %103 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %104 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %109 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %107, %112
  %114 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %115 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %119 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  store i32 %118, i32* %122, align 4
  ret i32 0
}

declare dso_local i32 @get_alignment(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
