; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn68xx_device.c_lio_cn68xx_set_dpi_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn68xx_device.c_lio_cn68xx_set_dpi_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@__const.lio_cn68xx_set_dpi_regs.fifo_sizes = private unnamed_addr constant [6 x i32] [i32 3, i32 3, i32 1, i32 1, i32 1, i32 8], align 16
@CN6XXX_DPI_DMA_CTL_MASK = common dso_local global i32 0, align 4
@CN6XXX_DPI_DMA_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"DPI_DMA_CONTROL: 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"DPI_ENG_BUF%d: 0x%016llx\0A\00", align 1
@CN6XXX_DPI_CTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"DPI_CTL: 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_cn68xx_set_dpi_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_cn68xx_set_dpi_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([6 x i32]* @__const.lio_cn68xx_set_dpi_regs.fifo_sizes to i8*), i64 24, i1 false)
  %6 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %7 = load i32, i32* @CN6XXX_DPI_DMA_CTL_MASK, align 4
  %8 = load i32, i32* @CN6XXX_DPI_DMA_CONTROL, align 4
  %9 = call i32 @lio_pci_writeq(%struct.octeon_device* %6, i32 %7, i32 %8)
  %10 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = load i32, i32* @CN6XXX_DPI_DMA_CONTROL, align 4
  %16 = call i32 @lio_pci_readq(%struct.octeon_device* %14, i32 %15)
  %17 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %44, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @CN6XXX_DPI_DMA_ENG_ENB(i32 %23)
  %25 = call i32 @lio_pci_writeq(%struct.octeon_device* %22, i32 0, i32 %24)
  %26 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @CN6XXX_DPI_DMA_ENG_BUF(i32 %31)
  %33 = call i32 @lio_pci_writeq(%struct.octeon_device* %26, i32 %30, i32 %32)
  %34 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @CN6XXX_DPI_DMA_ENG_BUF(i32 %40)
  %42 = call i32 @lio_pci_readq(%struct.octeon_device* %39, i32 %41)
  %43 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %21
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %18

47:                                               ; preds = %18
  %48 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %49 = load i32, i32* @CN6XXX_DPI_CTL, align 4
  %50 = call i32 @lio_pci_writeq(%struct.octeon_device* %48, i32 1, i32 %49)
  %51 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %56 = load i32, i32* @CN6XXX_DPI_CTL, align 4
  %57 = call i32 @lio_pci_readq(%struct.octeon_device* %55, i32 %56)
  %58 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lio_pci_writeq(%struct.octeon_device*, i32, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #2

declare dso_local i32 @lio_pci_readq(%struct.octeon_device*, i32) #2

declare dso_local i32 @CN6XXX_DPI_DMA_ENG_ENB(i32) #2

declare dso_local i32 @CN6XXX_DPI_DMA_ENG_BUF(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
