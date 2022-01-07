; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_prefetch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_prefetch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_nand_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PREFETCH_FIFOTHRESHOLD_MAX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PREFETCH_CONFIG1_CS_SHIFT = common dso_local global i32 0, align 4
@ENABLE_PREFETCH = common dso_local global i32 0, align 4
@DMA_MPU_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.omap_nand_info*)* @omap_prefetch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_prefetch_enable(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.omap_nand_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.omap_nand_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.omap_nand_info* %5, %struct.omap_nand_info** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @PREFETCH_FIFOTHRESHOLD_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %62

19:                                               ; preds = %6
  %20 = load %struct.omap_nand_info*, %struct.omap_nand_info** %13, align 8
  %21 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @readl(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %62

29:                                               ; preds = %19
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.omap_nand_info*, %struct.omap_nand_info** %13, align 8
  %32 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %30, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PREFETCH_CONFIG1_CS_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @PREFETCH_FIFOTHRESHOLD(i32 %39)
  %41 = or i32 %38, %40
  %42 = load i32, i32* @ENABLE_PREFETCH, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @DMA_MPU_MODE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 1
  %50 = or i32 %47, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.omap_nand_info*, %struct.omap_nand_info** %13, align 8
  %53 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @writel(i32 %51, i32 %55)
  %57 = load %struct.omap_nand_info*, %struct.omap_nand_info** %13, align 8
  %58 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writel(i32 1, i32 %60)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %29, %26, %18
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @PREFETCH_FIFOTHRESHOLD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
