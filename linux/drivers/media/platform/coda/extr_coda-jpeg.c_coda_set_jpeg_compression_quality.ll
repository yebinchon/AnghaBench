; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-jpeg.c_coda_set_jpeg_compression_quality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-jpeg.c_coda_set_jpeg_compression_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@luma_q = common dso_local global i32 0, align 4
@chroma_q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coda_set_jpeg_compression_quality(%struct.coda_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 100
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 100, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 5
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 5, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 50
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 5000, %21
  store i32 %22, i32* %5, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 2, %24
  %26 = sub nsw i32 200, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @luma_q, align 4
  %43 = call i32 @memcpy(i64 %41, i32 %42, i32 64)
  %44 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @coda_scale_quant_table(i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %35, %27
  %53 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %52
  %61 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @chroma_q, align 4
  %68 = call i32 @memcpy(i64 %66, i32 %67, i32 64)
  %69 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @coda_scale_quant_table(i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %60, %52
  ret void
}

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @coda_scale_quant_table(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
