; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_calc_block_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_calc_block_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DOC_LAYOUT_PAGES_PER_BLOCK = common dso_local global i32 0, align 4
@DOC_LAYOUT_NBPLANES = common dso_local global i32 0, align 4
@DOC_LAYOUT_PAGE_SIZE = common dso_local global i32 0, align 4
@DOC_LAYOUT_PAGE_OOB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*, i32)* @calc_block_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_block_sector(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @DOC_LAYOUT_PAGES_PER_BLOCK, align 4
  %16 = load i32, i32* @DOC_LAYOUT_NBPLANES, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %6
  %24 = load i32, i32* %14, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sdiv i32 %30, %31
  %33 = load i32, i32* @DOC_LAYOUT_NBPLANES, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = srem i32 %40, %41
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @DOC_LAYOUT_NBPLANES, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %26
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %26
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %13, align 4
  %59 = srem i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @DOC_LAYOUT_PAGE_OOB_SIZE, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32*, i32** %11, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
