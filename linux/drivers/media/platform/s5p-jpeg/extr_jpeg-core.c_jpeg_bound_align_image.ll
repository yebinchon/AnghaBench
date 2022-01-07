; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_jpeg_bound_align_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_jpeg_bound_align_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_jpeg_ctx*, i32*, i32, i32, i32, i32*, i32, i32, i32)* @jpeg_bound_align_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jpeg_bound_align_image(%struct.s5p_jpeg_ctx* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.s5p_jpeg_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %14, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %21, align 4
  %29 = load i32, i32* %18, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %22, align 4
  %31 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %9
  %40 = load i32, i32* %21, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %19, align 4
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %20, align 4
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %46, %42, %39
  br label %50

50:                                               ; preds = %49, %9
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @v4l_bound_align_image(i32* %51, i32 %52, i32 %53, i32 %54, i32* %55, i32 %56, i32 %57, i32 %58, i32 0)
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %50
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* %21, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %64, %50
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %22, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %17, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* %22, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %81, %76
  ret void
}

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
