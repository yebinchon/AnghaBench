; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_hisi-sfc.c_hisi_spi_nor_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32, i32, i32, i32, i32, %struct.hifmc_priv* }
%struct.hifmc_priv = type { i32, %struct.hifmc_host* }
%struct.hifmc_host = type { i64 }

@FMC_CFG = common dso_local global i64 0, align 8
@FMC_CFG_OP_MODE_MASK = common dso_local global i32 0, align 4
@SPI_NOR_ADDR_MODE_MASK = common dso_local global i32 0, align 4
@FMC_CFG_OP_MODE_NORMAL = common dso_local global i32 0, align 4
@SPI_NOR_ADDR_MODE_4BYTES = common dso_local global i32 0, align 4
@SPI_NOR_ADDR_MODE_3BYTES = common dso_local global i32 0, align 4
@FMC_ADDRL = common dso_local global i64 0, align 8
@FMC_DMA_SADDR_D0 = common dso_local global i64 0, align 8
@FMC_DMA_LEN = common dso_local global i64 0, align 8
@FMC_OP_READ = common dso_local global i64 0, align 8
@FMC_OP_CFG = common dso_local global i64 0, align 8
@FMC_INT_CLR = common dso_local global i64 0, align 8
@OP_CTRL_DMA_OP_READY = common dso_local global i32 0, align 4
@FMC_OP_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32, i64, i64)* @hisi_spi_nor_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_spi_nor_dma_transfer(%struct.spi_nor* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hifmc_priv*, align 8
  %12 = alloca %struct.hifmc_host*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %16 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %15, i32 0, i32 6
  %17 = load %struct.hifmc_priv*, %struct.hifmc_priv** %16, align 8
  store %struct.hifmc_priv* %17, %struct.hifmc_priv** %11, align 8
  %18 = load %struct.hifmc_priv*, %struct.hifmc_priv** %11, align 8
  %19 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %18, i32 0, i32 1
  %20 = load %struct.hifmc_host*, %struct.hifmc_host** %19, align 8
  store %struct.hifmc_host* %20, %struct.hifmc_host** %12, align 8
  store i64 0, i64* %13, align 8
  %21 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %22 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FMC_CFG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @FMC_CFG_OP_MODE_MASK, align 4
  %28 = load i32, i32* @SPI_NOR_ADDR_MODE_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %14, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* @FMC_CFG_OP_MODE_NORMAL, align 4
  %34 = load i32, i32* %14, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %14, align 4
  %36 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %37 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* @SPI_NOR_ADDR_MODE_4BYTES, align 4
  br label %44

42:                                               ; preds = %5
  %43 = load i32, i32* @SPI_NOR_ADDR_MODE_3BYTES, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %50 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FMC_CFG, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %57 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FMC_ADDRL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %64 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FMC_DMA_SADDR_D0, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @FMC_DMA_LEN_SET(i64 %69)
  %71 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %72 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FMC_DMA_LEN, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.hifmc_priv*, %struct.hifmc_priv** %11, align 8
  %78 = getelementptr inbounds %struct.hifmc_priv, %struct.hifmc_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @OP_CFG_FM_CS(i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @FMC_OP_READ, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %44
  %85 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %86 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @hisi_spi_nor_get_if_type(i32 %87)
  store i64 %88, i64* %13, align 8
  br label %94

89:                                               ; preds = %44
  %90 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %91 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @hisi_spi_nor_get_if_type(i32 %92)
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @OP_CFG_MEM_IF_TYPE(i64 %95)
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @FMC_OP_READ, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %104 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 3
  %107 = call i32 @OP_CFG_DUMMY_NUM(i32 %106)
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %102, %94
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %113 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FMC_OP_CFG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %119 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @FMC_INT_CLR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 255, i64 %122)
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @OP_CTRL_RW_OP(i64 %124)
  %126 = load i32, i32* @OP_CTRL_DMA_OP_READY, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %14, align 4
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* @FMC_OP_READ, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %110
  %132 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %133 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @OP_CTRL_RD_OPCODE(i32 %134)
  br label %141

136:                                              ; preds = %110
  %137 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %138 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @OP_CTRL_WR_OPCODE(i32 %139)
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi i32 [ %135, %131 ], [ %140, %136 ]
  %143 = load i32, i32* %14, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %147 = getelementptr inbounds %struct.hifmc_host, %struct.hifmc_host* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @FMC_OP_DMA, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 %145, i64 %150)
  %152 = load %struct.hifmc_host*, %struct.hifmc_host** %12, align 8
  %153 = call i32 @hisi_spi_nor_wait_op_finish(%struct.hifmc_host* %152)
  ret i32 %153
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FMC_DMA_LEN_SET(i64) #1

declare dso_local i32 @OP_CFG_FM_CS(i32) #1

declare dso_local i64 @hisi_spi_nor_get_if_type(i32) #1

declare dso_local i32 @OP_CFG_MEM_IF_TYPE(i64) #1

declare dso_local i32 @OP_CFG_DUMMY_NUM(i32) #1

declare dso_local i32 @OP_CTRL_RW_OP(i64) #1

declare dso_local i32 @OP_CTRL_RD_OPCODE(i32) #1

declare dso_local i32 @OP_CTRL_WR_OPCODE(i32) #1

declare dso_local i32 @hisi_spi_nor_wait_op_finish(%struct.hifmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
