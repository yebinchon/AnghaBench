; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i64 }

@SFLASH_WRBUF_SIZE = common dso_local global i32 0, align 4
@MTK_NOR_PP_DATA_REG = common dso_local global i64 0, align 8
@MTK_NOR_WR_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_nor*, i32, i32*)* @mtk_nor_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_write_buffer(%struct.mtk_nor* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mtk_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtk_nor* %0, %struct.mtk_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.mtk_nor*, %struct.mtk_nor** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @mtk_nor_set_addr(%struct.mtk_nor* %10, i32 %11)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %56, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SFLASH_WRBUF_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 24
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %24, %31
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %32, %39
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.mtk_nor*, %struct.mtk_nor** %4, align 8
  %51 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MTK_NOR_PP_DATA_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  br label %56

56:                                               ; preds = %17
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %7, align 4
  br label %13

59:                                               ; preds = %13
  %60 = load %struct.mtk_nor*, %struct.mtk_nor** %4, align 8
  %61 = load i32, i32* @MTK_NOR_WR_CMD, align 4
  %62 = call i32 @mtk_nor_execute_cmd(%struct.mtk_nor* %60, i32 %61)
  ret i32 %62
}

declare dso_local i32 @mtk_nor_set_addr(%struct.mtk_nor*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mtk_nor_execute_cmd(%struct.mtk_nor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
