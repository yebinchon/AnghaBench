; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_alloc.c_mlx4_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_buf = type { i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_buf_alloc(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.mlx4_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_buf* %3, %struct.mlx4_buf** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %19 = call i32 @mlx4_buf_direct_alloc(%struct.mlx4_dev* %16, i32 %17, %struct.mlx4_buf* %18)
  store i32 %19, i32* %5, align 4
  br label %106

20:                                               ; preds = %4
  %21 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @DIV_ROUND_UP(i32 %24, i32 %25)
  %27 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %28 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %30 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %33 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %36 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %38 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.TYPE_8__* @kcalloc(i32 %39, i32 8, i32 %40)
  %42 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %43 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %42, i32 0, i32 2
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %43, align 8
  %44 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %45 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %20
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %106

51:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %94, %51
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %52
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @dma_alloc_coherent(i32* %64, i32 %65, i32* %10, i32 %66)
  %68 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %69 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %68, i32 0, i32 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %67, i32* %74, align 4
  %75 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %76 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %75, i32 0, i32 2
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %58
  br label %99

85:                                               ; preds = %58
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %88 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %52

97:                                               ; preds = %52
  br label %98

98:                                               ; preds = %97
  store i32 0, i32* %5, align 4
  br label %106

99:                                               ; preds = %84
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.mlx4_buf*, %struct.mlx4_buf** %9, align 8
  %103 = call i32 @mlx4_buf_free(%struct.mlx4_dev* %100, i32 %101, %struct.mlx4_buf* %102)
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %99, %98, %48, %15
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @mlx4_buf_direct_alloc(%struct.mlx4_dev*, i32, %struct.mlx4_buf*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_8__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mlx4_buf_free(%struct.mlx4_dev*, i32, %struct.mlx4_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
