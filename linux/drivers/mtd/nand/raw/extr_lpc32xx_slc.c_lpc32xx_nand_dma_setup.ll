; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_slc.c_lpc32xx_nand_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_nand_host = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no DMA platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"nand-slc\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DMA channel\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc32xx_nand_host*)* @lpc32xx_nand_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_nand_dma_setup(%struct.lpc32xx_nand_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpc32xx_nand_host*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.lpc32xx_nand_host* %0, %struct.lpc32xx_nand_host** %3, align 8
  %6 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %6, i32 0, i32 2
  %8 = call %struct.mtd_info* @nand_to_mtd(i32* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %15 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %56

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dma_cap_zero(i32 %29)
  %31 = load i32, i32* @DMA_SLAVE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dma_cap_set(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dma_request_channel(i32 %34, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %44 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %28
  %48 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %49 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %47, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
