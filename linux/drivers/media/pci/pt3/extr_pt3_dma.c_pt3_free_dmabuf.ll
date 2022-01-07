; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_free_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_free_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.pt3_board* }
%struct.pt3_board = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@DATA_BUF_SZ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt3_free_dmabuf(%struct.pt3_adapter* %0) #0 {
  %2 = alloca %struct.pt3_adapter*, align 8
  %3 = alloca %struct.pt3_board*, align 8
  %4 = alloca i32, align 4
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %2, align 8
  %5 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.pt3_board*, %struct.pt3_board** %7, align 8
  store %struct.pt3_board* %8, %struct.pt3_board** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %17 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* @DATA_BUF_SZ, align 4
  %21 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_free_coherent(i32* %19, i32 %20, i32 %28, i32 %36)
  br label %38

38:                                               ; preds = %15
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %73, %41
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load %struct.pt3_board*, %struct.pt3_board** %3, align 8
  %52 = getelementptr inbounds %struct.pt3_board, %struct.pt3_board* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dma_free_coherent(i32* %54, i32 %55, i32 %63, i32 %71)
  br label %73

73:                                               ; preds = %50
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %44

76:                                               ; preds = %44
  %77 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %78 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
