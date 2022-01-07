; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-jpeg.c_coda_jpeg_write_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-jpeg.c_coda_jpeg_write_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_memcpy_desc = type { i32, i32, i32 }
%struct.coda_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@coda_jpeg_write_tables.huff = internal constant [8 x %struct.coda_memcpy_desc] [%struct.coda_memcpy_desc { i32 0, i32 129, i32 4 }, %struct.coda_memcpy_desc { i32 16, i32 128, i32 4 }, %struct.coda_memcpy_desc { i32 32, i32 131, i32 4 }, %struct.coda_memcpy_desc { i32 48, i32 130, i32 4 }, %struct.coda_memcpy_desc { i32 216, i32 133, i32 4 }, %struct.coda_memcpy_desc { i32 232, i32 132, i32 4 }, %struct.coda_memcpy_desc { i32 248, i32 135, i32 4 }, %struct.coda_memcpy_desc { i32 264, i32 134, i32 4 }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_jpeg_write_tables(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x %struct.coda_memcpy_desc], align 16
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %5 = getelementptr inbounds [3 x %struct.coda_memcpy_desc], [3 x %struct.coda_memcpy_desc]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %5, i32 0, i32 0
  store i32 512, i32* %6, align 4
  %7 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %5, i32 0, i32 1
  %8 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %5, i32 0, i32 2
  store i32 64, i32* %14, align 4
  %15 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %5, i64 1
  %16 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %15, i32 0, i32 0
  store i32 576, i32* %16, align 4
  %17 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %15, i32 0, i32 1
  %18 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %15, i32 0, i32 2
  store i32 64, i32* %24, align 4
  %25 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %15, i64 1
  %26 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %25, i32 0, i32 0
  store i32 640, i32* %26, align 4
  %27 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %25, i32 0, i32 1
  %28 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %27, align 4
  %34 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %25, i32 0, i32 2
  store i32 64, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %48, %1
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ARRAY_SIZE(%struct.coda_memcpy_desc* getelementptr inbounds ([8 x %struct.coda_memcpy_desc], [8 x %struct.coda_memcpy_desc]* @coda_jpeg_write_tables.huff, i64 0, i64 0))
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* getelementptr inbounds ([8 x %struct.coda_memcpy_desc], [8 x %struct.coda_memcpy_desc]* @coda_jpeg_write_tables.huff, i64 0, i64 0), i64 %45
  %47 = call i32 @coda_memcpy_parabuf(i32 %43, %struct.coda_memcpy_desc* %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %35

51:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %3, align 4
  %54 = getelementptr inbounds [3 x %struct.coda_memcpy_desc], [3 x %struct.coda_memcpy_desc]* %4, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(%struct.coda_memcpy_desc* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [3 x %struct.coda_memcpy_desc], [3 x %struct.coda_memcpy_desc]* %4, i64 0, i64 0
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.coda_memcpy_desc, %struct.coda_memcpy_desc* %62, i64 %64
  %66 = call i32 @coda_memcpy_parabuf(i32 %61, %struct.coda_memcpy_desc* %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %52

70:                                               ; preds = %52
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(%struct.coda_memcpy_desc*) #1

declare dso_local i32 @coda_memcpy_parabuf(i32, %struct.coda_memcpy_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
