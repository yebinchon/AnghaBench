; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma_ringalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_dma.c_dma_ringalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_info*, i32, i32, i32*, i32*, i32*)* @dma_ringalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dma_ringalloc(%struct.dma_info* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dma_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dma_info* %0, %struct.dma_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %16, align 4
  %20 = load %struct.dma_info*, %struct.dma_info** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i8* @dma_alloc_consistent(%struct.dma_info* %20, i32 %21, i32 %23, i32* %24, i32* %25)
  store i8* %26, i8** %14, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = icmp eq i8* null, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %67

30:                                               ; preds = %6
  %31 = load i8*, i8** %14, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i32, i32* %16, align 4
  %34 = call i64 @roundup(i64 %32, i32 %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %30
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dma_align_sizetobits(i32 %47)
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.dma_info*, %struct.dma_info** %8, align 8
  %51 = getelementptr inbounds %struct.dma_info, %struct.dma_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dma_free_coherent(i32 %52, i32 %53, i8* %54, i32 %56)
  %58 = load %struct.dma_info*, %struct.dma_info** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i8* @dma_alloc_consistent(%struct.dma_info* %58, i32 %59, i32 %61, i32* %62, i32* %63)
  store i8* %64, i8** %14, align 8
  br label %65

65:                                               ; preds = %46, %30
  %66 = load i8*, i8** %14, align 8
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %65, %29
  %68 = load i8*, i8** %7, align 8
  ret i8* %68
}

declare dso_local i8* @dma_alloc_consistent(%struct.dma_info*, i32, i32, i32*, i32*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @dma_align_sizetobits(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
