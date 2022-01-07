; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_init_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_init_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_dmabuf = type { i32, i32, i32*, i32*, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"init kernel [%d pages]\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@VM_IOREMAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"vmalloc_32(%d pages) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"vmalloc is at addr %p, size=%d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_dmabuf*, i32, i32)* @videobuf_dma_init_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_dma_init_kernel(%struct.videobuf_dmabuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.videobuf_dmabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.videobuf_dmabuf* %0, %struct.videobuf_dmabuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %15 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kcalloc(i32 %16, i32 4, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %21 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %23 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %161

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 4, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %35 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %37 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %29
  %41 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %42 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %161

47:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %77, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %54 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %58 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @dma_alloc_coherent(i32 %55, i32 %56, i32* %62, i32 %63)
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %118

68:                                               ; preds = %52
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @virt_to_page(i8* %69)
  %71 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %72 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %48

80:                                               ; preds = %48
  %81 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %82 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @VM_MAP, align 4
  %86 = load i32, i32* @VM_IOREMAP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PAGE_KERNEL, align 4
  %89 = call i32* @vmap(i32* %83, i32 %84, i32 %87, i32 %88)
  %90 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %91 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %90, i32 0, i32 5
  store i32* %89, i32** %91, align 8
  %92 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %93 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* null, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %118

99:                                               ; preds = %80
  %100 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %101 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = ptrtoint i32* %102 to i32
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @PAGE_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %109 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @PAGE_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = call i32 @memset(i32* %110, i32 0, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %117 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  store i32 0, i32* %4, align 4
  br label %161

118:                                              ; preds = %96, %67
  br label %119

119:                                              ; preds = %122, %118
  %120 = load i32, i32* %8, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %8, align 4
  %125 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %126 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @page_address(i32 %131)
  store i8* %132, i8** %10, align 8
  %133 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %134 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %139 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dma_free_coherent(i32 %135, i32 %136, i8* %137, i32 %144)
  br label %119

146:                                              ; preds = %119
  %147 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %148 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @kfree(i32* %149)
  %151 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %152 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %151, i32 0, i32 3
  store i32* null, i32** %152, align 8
  %153 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %154 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @kfree(i32* %155)
  %157 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %5, align 8
  %158 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %157, i32 0, i32 2
  store i32* null, i32** %158, align 8
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %146, %99, %40, %26
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32* @vmap(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
