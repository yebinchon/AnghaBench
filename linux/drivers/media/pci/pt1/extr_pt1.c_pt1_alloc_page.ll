; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PT1_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PT1_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pt1*, i32*, i32*)* @pt1_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pt1_alloc_page(%struct.pt1* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt1*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.pt1*, %struct.pt1** %5, align 8
  %11 = getelementptr inbounds %struct.pt1, %struct.pt1* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @PT1_PAGE_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @dma_alloc_coherent(i32* %13, i32 %14, i32* %9, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %39

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PT1_PAGE_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PT1_PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = ashr i32 %28, 31
  %30 = ashr i32 %29, 1
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @PT1_PAGE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %8, align 8
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %20, %19
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
