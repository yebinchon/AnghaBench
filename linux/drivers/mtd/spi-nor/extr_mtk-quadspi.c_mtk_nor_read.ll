; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.mtk_nor* }
%struct.mtk_nor = type { i64 }

@MTK_NOR_PIO_READ_CMD = common dso_local global i32 0, align 4
@MTK_NOR_RDATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i64, i64, i32*)* @mtk_nor_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_read(%struct.spi_nor* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mtk_nor*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load i32*, i32** %9, align 8
  store i32* %17, i32** %13, align 8
  %18 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %19 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %18, i32 0, i32 0
  %20 = load %struct.mtk_nor*, %struct.mtk_nor** %19, align 8
  store %struct.mtk_nor* %20, %struct.mtk_nor** %14, align 8
  %21 = load %struct.mtk_nor*, %struct.mtk_nor** %14, align 8
  %22 = call i32 @mtk_nor_set_read_mode(%struct.mtk_nor* %21)
  %23 = load %struct.mtk_nor*, %struct.mtk_nor** %14, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @mtk_nor_set_addr(%struct.mtk_nor* %23, i32 %24)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %50, %4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %26
  %32 = load %struct.mtk_nor*, %struct.mtk_nor** %14, align 8
  %33 = load i32, i32* @MTK_NOR_PIO_READ_CMD, align 4
  %34 = call i32 @mtk_nor_execute_cmd(%struct.mtk_nor* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %56

39:                                               ; preds = %31
  %40 = load %struct.mtk_nor*, %struct.mtk_nor** %14, align 8
  %41 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MTK_NOR_RDATA_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readb(i64 %44)
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mtk_nor_set_read_mode(%struct.mtk_nor*) #1

declare dso_local i32 @mtk_nor_set_addr(%struct.mtk_nor*, i32) #1

declare dso_local i32 @mtk_nor_execute_cmd(%struct.mtk_nor*, i32) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
