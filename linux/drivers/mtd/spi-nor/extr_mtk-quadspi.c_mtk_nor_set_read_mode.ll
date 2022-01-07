; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_set_read_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_set_read_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i64, %struct.spi_nor }
%struct.spi_nor = type { i32, i32 }

@MTK_NOR_PRGDATA3_REG = common dso_local global i64 0, align 8
@MTK_NOR_FAST_READ = common dso_local global i32 0, align 4
@MTK_NOR_CFG1_REG = common dso_local global i64 0, align 8
@MTK_NOR_DUAL_READ_EN = common dso_local global i32 0, align 4
@MTK_NOR_DUAL_REG = common dso_local global i64 0, align 8
@MTK_NOR_PRGDATA4_REG = common dso_local global i64 0, align 8
@MTK_NOR_QUAD_READ_EN = common dso_local global i32 0, align 4
@MTK_NOR_DUAL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_nor*)* @mtk_nor_set_read_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nor_set_read_mode(%struct.mtk_nor* %0) #0 {
  %2 = alloca %struct.mtk_nor*, align 8
  %3 = alloca %struct.spi_nor*, align 8
  store %struct.mtk_nor* %0, %struct.mtk_nor** %2, align 8
  %4 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %4, i32 0, i32 1
  store %struct.spi_nor* %5, %struct.spi_nor** %3, align 8
  %6 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %7 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %60 [
    i32 130, label %9
    i32 129, label %26
    i32 128, label %43
  ]

9:                                                ; preds = %1
  %10 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %11 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %14 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MTK_NOR_PRGDATA3_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeb(i32 %12, i64 %17)
  %19 = load i32, i32* @MTK_NOR_FAST_READ, align 4
  %20 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %21 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MTK_NOR_CFG1_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writeb(i32 %19, i64 %24)
  br label %68

26:                                               ; preds = %1
  %27 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %28 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MTK_NOR_PRGDATA3_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writeb(i32 %29, i64 %34)
  %36 = load i32, i32* @MTK_NOR_DUAL_READ_EN, align 4
  %37 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %38 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MTK_NOR_DUAL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writeb(i32 %36, i64 %41)
  br label %68

43:                                               ; preds = %1
  %44 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %45 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %48 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MTK_NOR_PRGDATA4_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writeb(i32 %46, i64 %51)
  %53 = load i32, i32* @MTK_NOR_QUAD_READ_EN, align 4
  %54 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %55 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MTK_NOR_DUAL_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeb(i32 %53, i64 %58)
  br label %68

60:                                               ; preds = %1
  %61 = load i32, i32* @MTK_NOR_DUAL_DISABLE, align 4
  %62 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %63 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MTK_NOR_DUAL_REG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writeb(i32 %61, i64 %66)
  br label %68

68:                                               ; preds = %60, %43, %26, %9
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
