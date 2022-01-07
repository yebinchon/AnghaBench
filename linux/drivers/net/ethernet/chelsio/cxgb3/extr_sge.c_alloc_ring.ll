; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pci_dev*, i64, i64, i64, i32*, i8*)* @alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_ring(%struct.pci_dev* %0, i64 %1, i64 %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = mul i64 %17, %18
  store i64 %19, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %14, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @dma_alloc_coherent(i32* %21, i64 %22, i32* %23, i32 %24)
  store i8* %25, i8** %16, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %56

29:                                               ; preds = %6
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kcalloc(i64 %36, i64 %37, i32 %38)
  store i8* %39, i8** %15, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %14, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dma_free_coherent(i32* %44, i64 %45, i8* %46, i32 %48)
  store i8* null, i8** %7, align 8
  br label %56

50:                                               ; preds = %35
  %51 = load i8*, i8** %15, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = bitcast i8* %52 to i8**
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %32, %29
  %55 = load i8*, i8** %16, align 8
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %54, %42, %28
  %57 = load i8*, i8** %7, align 8
  ret i8* %57
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i8* @kcalloc(i64, i64, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
