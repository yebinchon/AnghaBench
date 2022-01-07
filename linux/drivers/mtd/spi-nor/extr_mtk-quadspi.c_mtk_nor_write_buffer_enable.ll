; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_write_buffer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_write_buffer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i64 }

@MTK_NOR_WR_BUF_ENABLE = common dso_local global i32 0, align 4
@MTK_NOR_CFG2_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_nor*)* @mtk_nor_write_buffer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_write_buffer_enable(%struct.mtk_nor* %0) #0 {
  %2 = alloca %struct.mtk_nor*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_nor* %0, %struct.mtk_nor** %2, align 8
  %4 = load i32, i32* @MTK_NOR_WR_BUF_ENABLE, align 4
  %5 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MTK_NOR_CFG2_REG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %4, i64 %9)
  %11 = load %struct.mtk_nor*, %struct.mtk_nor** %2, align 8
  %12 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MTK_NOR_CFG2_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 1, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @readb_poll_timeout(i64 %15, i32 %16, i32 %20, i32 100, i32 10000)
  ret i32 %21
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
