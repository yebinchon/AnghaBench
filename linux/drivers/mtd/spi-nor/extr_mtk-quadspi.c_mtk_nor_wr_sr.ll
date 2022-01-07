; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_wr_sr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_wr_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i64 }

@MTK_NOR_PRGDATA5_REG = common dso_local global i64 0, align 8
@MTK_NOR_CNT_REG = common dso_local global i64 0, align 8
@MTK_NOR_WRSR_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_nor*, i32)* @mtk_nor_wr_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_wr_sr(%struct.mtk_nor* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_nor*, align 8
  %4 = alloca i32, align 4
  store %struct.mtk_nor* %0, %struct.mtk_nor** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mtk_nor*, %struct.mtk_nor** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MTK_NOR_PRGDATA5_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writeb(i32 %5, i64 %10)
  %12 = load %struct.mtk_nor*, %struct.mtk_nor** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MTK_NOR_CNT_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writeb(i32 8, i64 %16)
  %18 = load %struct.mtk_nor*, %struct.mtk_nor** %3, align 8
  %19 = load i32, i32* @MTK_NOR_WRSR_CMD, align 4
  %20 = call i32 @mtk_nor_execute_cmd(%struct.mtk_nor* %18, i32 %19)
  ret i32 %20
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @mtk_nor_execute_cmd(%struct.mtk_nor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
