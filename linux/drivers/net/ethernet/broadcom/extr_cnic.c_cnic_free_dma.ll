; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_free_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cnic_dma = type { i32, i32**, i32*, i32, i32, i32* }

@CNIC_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.cnic_dma*)* @cnic_free_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_free_dma(%struct.cnic_dev* %0, %struct.cnic_dma* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_dma*, align 8
  %5 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.cnic_dma* %1, %struct.cnic_dma** %4, align 8
  %6 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %7 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %6, i32 0, i32 1
  %8 = load i32**, i32*** %7, align 8
  %9 = icmp ne i32** %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %89

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %55, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %15 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %12
  %19 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %20 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %18
  %28 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %29 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %33 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %34 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %41 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_free_coherent(i32* %31, i32 %32, i32* %39, i32 %46)
  %48 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %49 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %27, %18
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %12

58:                                               ; preds = %12
  %59 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %60 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %65 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %69 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %72 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %75 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dma_free_coherent(i32* %67, i32 %70, i32* %73, i32 %76)
  %78 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %79 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %63, %58
  %81 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %82 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = call i32 @kfree(i32** %83)
  %85 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %86 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %85, i32 0, i32 1
  store i32** null, i32*** %86, align 8
  %87 = load %struct.cnic_dma*, %struct.cnic_dma** %4, align 8
  %88 = getelementptr inbounds %struct.cnic_dma, %struct.cnic_dma* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %80, %10
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
