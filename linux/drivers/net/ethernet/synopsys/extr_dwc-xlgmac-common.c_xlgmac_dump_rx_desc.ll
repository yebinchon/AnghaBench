; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_dump_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_dump_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }
%struct.xlgmac_ring = type { i32 }
%struct.xlgmac_desc_data = type { i32, %struct.xlgmac_dma_desc* }
%struct.xlgmac_dma_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"RX: dma_desc=%p, dma_desc_addr=%pad\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlgmac_dump_rx_desc(%struct.xlgmac_pdata* %0, %struct.xlgmac_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.xlgmac_pdata*, align 8
  %5 = alloca %struct.xlgmac_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xlgmac_desc_data*, align 8
  %8 = alloca %struct.xlgmac_dma_desc*, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %4, align 8
  store %struct.xlgmac_ring* %1, %struct.xlgmac_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %9, i32 %10)
  store %struct.xlgmac_desc_data* %11, %struct.xlgmac_desc_data** %7, align 8
  %12 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %13 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %12, i32 0, i32 1
  %14 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %13, align 8
  store %struct.xlgmac_dma_desc* %14, %struct.xlgmac_dma_desc** %8, align 8
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %16 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %19 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %18, i32 0, i32 1
  %20 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %19, align 8
  %21 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %7, align 8
  %22 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %21, i32 0, i32 0
  %23 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.xlgmac_dma_desc* %20, i32* %22)
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %4, align 8
  %25 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %29 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %33 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %37 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %8, align 8
  %41 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31, i32 %35, i32 %39, i32 %43)
  ret void
}

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
