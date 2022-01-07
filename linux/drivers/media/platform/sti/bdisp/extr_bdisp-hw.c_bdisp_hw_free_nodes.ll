; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_free_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_free_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_ctx = type { i32*, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_NB_NODE = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdisp_hw_free_nodes(%struct.bdisp_ctx* %0) #0 {
  %2 = alloca %struct.bdisp_ctx*, align 8
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %2, align 8
  %3 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %4 = icmp ne %struct.bdisp_ctx* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %5
  %13 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAX_NB_NODE, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_ATTR_WRITE_COMBINE, align 4
  %33 = call i32 @dma_free_attrs(i32 %17, i32 %21, i64 %26, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %12, %5, %1
  ret void
}

declare dso_local i32 @dma_free_attrs(i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
