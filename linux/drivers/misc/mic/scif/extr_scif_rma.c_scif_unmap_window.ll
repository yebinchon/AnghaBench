; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_unmap_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_unmap_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scif_window = type { i32, i32*, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_unmap_window(%struct.scif_dev* %0, %struct.scif_window* %1) #0 {
  %3 = alloca %struct.scif_dev*, align 8
  %4 = alloca %struct.scif_window*, align 8
  %5 = alloca i32, align 4
  store %struct.scif_dev* %0, %struct.scif_dev** %3, align 8
  store %struct.scif_window* %1, %struct.scif_window** %4, align 8
  %6 = call i64 (...) @scif_is_iommu_enabled()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %2
  %9 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %10 = call i32 @scifdev_self(%struct.scif_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  %13 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %14 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %19 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %23 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %28 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %33 = call i32 @dma_unmap_sg(i32* %21, i32 %26, i32 %31, i32 %32)
  %34 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %35 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i32 @sg_free_table(%struct.TYPE_5__* %36)
  %38 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %39 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @kfree(%struct.TYPE_5__* %40)
  %42 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %43 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %42, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %43, align 8
  br label %44

44:                                               ; preds = %17, %12
  br label %91

45:                                               ; preds = %8, %2
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %87, %45
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %49 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %46
  %53 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %54 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %52
  %62 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %63 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scif_dev*, %struct.scif_dev** %3, align 8
  %70 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %71 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PAGE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = call i32 @scif_unmap_single(i32 %68, %struct.scif_dev* %69, i32 %78)
  %80 = load %struct.scif_window*, %struct.scif_window** %4, align 8
  %81 = getelementptr inbounds %struct.scif_window, %struct.scif_window* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %61, %52
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %46

90:                                               ; preds = %46
  br label %91

91:                                               ; preds = %90, %44
  ret void
}

declare dso_local i64 @scif_is_iommu_enabled(...) #1

declare dso_local i32 @scifdev_self(%struct.scif_dev*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

declare dso_local i32 @scif_unmap_single(i32, %struct.scif_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
