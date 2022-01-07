; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_nand_host = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mtd_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no DMA platform data\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"nand-mlc\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to request DMA channel\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to setup DMA slave\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpc32xx_nand_host*)* @lpc32xx_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_dma_setup(%struct.lpc32xx_nand_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpc32xx_nand_host*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.lpc32xx_nand_host* %0, %struct.lpc32xx_nand_host** %3, align 8
  %6 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %7 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %6, i32 0, i32 4
  %8 = call %struct.mtd_info* @nand_to_mtd(i32* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %15 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %112

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dma_cap_zero(i32 %29)
  %31 = load i32, i32* @DMA_SLAVE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dma_cap_set(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
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
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %112

55:                                               ; preds = %28
  %56 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %57 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %58 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 7
  store i32 %56, i32* %59, align 8
  %60 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %61 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %62 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 6
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %65 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %66 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 5
  store i8* %64, i8** %67, align 8
  %68 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 128, i32* %70, align 8
  %71 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %72 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 128, i32* %73, align 4
  %74 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %75 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %78 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @MLC_BUFF(i32 %79)
  %81 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %82 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  store i8* %80, i8** %83, align 8
  %84 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %85 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @MLC_BUFF(i32 %86)
  %88 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %89 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  store i8* %87, i8** %90, align 8
  %91 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %92 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %95 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %94, i32 0, i32 1
  %96 = call i64 @dmaengine_slave_config(i32 %93, %struct.TYPE_6__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %55
  %99 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %100 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %105

104:                                              ; preds = %55
  store i32 0, i32* %2, align 4
  br label %112

105:                                              ; preds = %98
  %106 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %3, align 8
  %107 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dma_release_channel(i32 %108)
  %110 = load i32, i32* @ENXIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %105, %104, %47, %20
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_channel(i32, i32, i8*) #1

declare dso_local i8* @MLC_BUFF(i32) #1

declare dso_local i64 @dmaengine_slave_config(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
