; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_set_addr_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_set_addr_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i64, i32, %struct.spi_nor }
%struct.spi_nor = type { i32 }

@MTK_NOR_DUAL_REG = common dso_local global i64 0, align 8
@MTK_NOR_4B_ADDR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unexpected address width %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_nor*)* @mtk_nor_set_addr_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nor_set_addr_width(%struct.mtk_nor* %0) #0 {
  %2 = alloca %struct.mtk_nor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  store %struct.mtk_nor* %0, %struct.mtk_nor** %2, align 8
  %5 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %5, i32 0, i32 2
  store %struct.spi_nor* %6, %struct.spi_nor** %4, align 8
  %7 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MTK_NOR_DUAL_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readb(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %25 [
    i32 3, label %16
    i32 4, label %21
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @MTK_NOR_4B_ADDR_EN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* @MTK_NOR_4B_ADDR_EN, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %27 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25, %21, %16
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %36 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MTK_NOR_DUAL_REG, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
