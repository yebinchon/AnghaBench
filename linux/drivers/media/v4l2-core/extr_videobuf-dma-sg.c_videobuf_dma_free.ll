; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_dmabuf = type { i32, i32, i64, i32*, i32*, i32*, i32, i32*, i32, i32 }

@MAGIC_DMABUF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_dma_free(%struct.videobuf_dmabuf* %0) #0 {
  %2 = alloca %struct.videobuf_dmabuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.videobuf_dmabuf* %0, %struct.videobuf_dmabuf** %2, align 8
  %5 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %6 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAGIC_DMABUF, align 4
  %9 = call i32 @MAGIC_CHECK(i32 %7, i32 %8)
  %10 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %11 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %15 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %22 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %27 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @put_page(i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %39 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @kfree(i32* %40)
  %42 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %43 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %42, i32 0, i32 7
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %46 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %100

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %78, %49
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %53 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %58 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @page_address(i32 %63)
  store i8* %64, i8** %4, align 8
  %65 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %66 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %71 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dma_free_coherent(i32 %67, i32 %68, i8* %69, i32 %76)
  br label %78

78:                                               ; preds = %56
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %50

81:                                               ; preds = %50
  %82 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %83 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @kfree(i32* %84)
  %86 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %87 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %86, i32 0, i32 5
  store i32* null, i32** %87, align 8
  %88 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %89 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %93 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %92, i32 0, i32 4
  store i32* null, i32** %93, align 8
  %94 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %95 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @vunmap(i32* %96)
  %98 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %99 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %98, i32 0, i32 3
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %81, %44
  %101 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %102 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %107 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %106, i32 0, i32 2
  store i64 0, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* @DMA_NONE, align 4
  %110 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %2, align 8
  %111 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  ret i32 0
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @vunmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
