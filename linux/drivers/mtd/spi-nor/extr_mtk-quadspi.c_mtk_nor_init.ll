; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i32, %struct.spi_nor, i64 }
%struct.spi_nor = type { %struct.TYPE_2__, i32, i32, i32, i32, %struct.mtk_nor*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.device_node = type { i32 }
%struct.spi_nor_hwcaps = type { i32 }

@SNOR_HWCAPS_READ = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_FAST = common dso_local global i32 0, align 4
@SNOR_HWCAPS_READ_1_1_2 = common dso_local global i32 0, align 4
@SNOR_HWCAPS_PP = common dso_local global i32 0, align 4
@MTK_NOR_ENABLE_SF_CMD = common dso_local global i32 0, align 4
@MTK_NOR_WRPROT_REG = common dso_local global i64 0, align 8
@mtk_nor_read = common dso_local global i32 0, align 4
@mtk_nor_read_reg = common dso_local global i32 0, align 4
@mtk_nor_write = common dso_local global i32 0, align 4
@mtk_nor_write_reg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mtk_nor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_nor*, %struct.device_node*)* @mtk_nor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_init(%struct.mtk_nor* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_nor*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.spi_nor_hwcaps, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_nor*, align 8
  store %struct.mtk_nor* %0, %struct.mtk_nor** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = getelementptr inbounds %struct.spi_nor_hwcaps, %struct.spi_nor_hwcaps* %6, i32 0, i32 0
  %10 = load i32, i32* @SNOR_HWCAPS_READ, align 4
  %11 = load i32, i32* @SNOR_HWCAPS_READ_FAST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SNOR_HWCAPS_READ_1_1_2, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SNOR_HWCAPS_PP, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @MTK_NOR_ENABLE_SF_CMD, align 4
  %18 = load %struct.mtk_nor*, %struct.mtk_nor** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MTK_NOR_WRPROT_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.mtk_nor*, %struct.mtk_nor** %4, align 8
  %25 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %24, i32 0, i32 1
  store %struct.spi_nor* %25, %struct.spi_nor** %8, align 8
  %26 = load %struct.mtk_nor*, %struct.mtk_nor** %4, align 8
  %27 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mtk_nor*, %struct.mtk_nor** %4, align 8
  %32 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %33 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %32, i32 0, i32 5
  store %struct.mtk_nor* %31, %struct.mtk_nor** %33, align 8
  %34 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = call i32 @spi_nor_set_flash_node(%struct.spi_nor* %34, %struct.device_node* %35)
  %37 = load i32, i32* @mtk_nor_read, align 4
  %38 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %39 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @mtk_nor_read_reg, align 4
  %41 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %42 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @mtk_nor_write, align 4
  %44 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %45 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @mtk_nor_write_reg, align 4
  %47 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %48 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %50 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %53 = call i32 @spi_nor_scan(%struct.spi_nor* %52, i32* null, %struct.spi_nor_hwcaps* %6)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %2
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %2
  %59 = load %struct.spi_nor*, %struct.spi_nor** %8, align 8
  %60 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %59, i32 0, i32 0
  %61 = call i32 @mtd_device_register(%struct.TYPE_2__* %60, i32* null, i32 0)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %56
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spi_nor_set_flash_node(%struct.spi_nor*, %struct.device_node*) #1

declare dso_local i32 @spi_nor_scan(%struct.spi_nor*, i32*, %struct.spi_nor_hwcaps*) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
