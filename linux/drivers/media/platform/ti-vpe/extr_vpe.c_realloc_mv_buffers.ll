; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_realloc_mv_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_realloc_mv_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i64, i64, i32*, i8**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to allocate motion vector buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpe_ctx*, i64)* @realloc_mv_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realloc_mv_buffers(%struct.vpe_ctx* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpe_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %7, i32 0, i32 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

19:                                               ; preds = %2
  %20 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %20, i32 0, i32 3
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %31, i32 0, i32 3
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dma_free_coherent(%struct.device* %27, i64 %30, i8* %35, i32 %40)
  br label %42

42:                                               ; preds = %26, %19
  %43 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %43, i32 0, i32 3
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dma_free_coherent(%struct.device* %50, i64 %53, i8* %58, i32 %63)
  br label %65

65:                                               ; preds = %49, %42
  %66 = load i64, i64* %5, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %140

69:                                               ; preds = %65
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @dma_alloc_coherent(%struct.device* %70, i64 %71, i32* %75, i32 %76)
  %78 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %79 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %78, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  store i8* %77, i8** %81, align 8
  %82 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %83 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %82, i32 0, i32 3
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %95, label %88

88:                                               ; preds = %69
  %89 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %90 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %89, i32 0, i32 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 @vpe_err(%struct.TYPE_4__* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %140

95:                                               ; preds = %69
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %99 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @dma_alloc_coherent(%struct.device* %96, i64 %97, i32* %101, i32 %102)
  %104 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %105 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %104, i32 0, i32 3
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  store i8* %103, i8** %107, align 8
  %108 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %109 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %108, i32 0, i32 3
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %134, label %114

114:                                              ; preds = %95
  %115 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %116 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = call i32 @vpe_err(%struct.TYPE_4__* %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %121, i32 0, i32 3
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %127 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dma_free_coherent(%struct.device* %119, i64 %120, i8* %125, i32 %130)
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %140

134:                                              ; preds = %95
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.vpe_ctx*, %struct.vpe_ctx** %4, align 8
  %139 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %138, i32 0, i32 1
  store i64 0, i64* %139, align 8
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %134, %114, %88, %68, %18
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @vpe_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
