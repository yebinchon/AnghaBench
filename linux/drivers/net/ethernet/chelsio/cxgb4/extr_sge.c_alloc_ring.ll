; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i64, i64, i32*, i8*, i64, i32)* @alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_ring(%struct.device* %0, i64 %1, i64 %2, i64 %3, i32* %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = mul i64 %21, %22
  %24 = load i64, i64* %16, align 8
  %25 = add i64 %23, %24
  store i64 %25, i64* %18, align 8
  store i8* null, i8** %19, align 8
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = load i64, i64* %18, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @dma_alloc_coherent(%struct.device* %26, i64 %27, i32* %28, i32 %29)
  store i8* %30, i8** %20, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %8
  store i8* null, i8** %9, align 8
  br label %62

34:                                               ; preds = %8
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i8* @kcalloc_node(i64 %38, i64 %39, i32 %40, i32 %41)
  store i8* %42, i8** %19, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %10, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dma_free_coherent(%struct.device* %46, i64 %47, i8* %48, i32 %50)
  store i8* null, i8** %9, align 8
  br label %62

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %19, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = bitcast i8* %58 to i8**
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i8*, i8** %20, align 8
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %60, %45, %33
  %63 = load i8*, i8** %9, align 8
  ret i8* %63
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i8* @kcalloc_node(i64, i64, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
