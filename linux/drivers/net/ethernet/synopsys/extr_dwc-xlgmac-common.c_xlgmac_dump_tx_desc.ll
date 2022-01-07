; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_dump_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-common.c_xlgmac_dump_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }
%struct.xlgmac_ring = type { i32 }
%struct.xlgmac_desc_data = type { i32, %struct.xlgmac_dma_desc* }
%struct.xlgmac_dma_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"TX: dma_desc=%p, dma_desc_addr=%pad\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"QUEUED FOR TX\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"TX BY DEVICE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlgmac_dump_tx_desc(%struct.xlgmac_pdata* %0, %struct.xlgmac_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xlgmac_pdata*, align 8
  %7 = alloca %struct.xlgmac_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xlgmac_desc_data*, align 8
  %12 = alloca %struct.xlgmac_dma_desc*, align 8
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %6, align 8
  store %struct.xlgmac_ring* %1, %struct.xlgmac_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %13

13:                                               ; preds = %17, %5
  %14 = load i32, i32* %9, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %9, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %18, i32 %19)
  store %struct.xlgmac_desc_data* %20, %struct.xlgmac_desc_data** %11, align 8
  %21 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %11, align 8
  %22 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %21, i32 0, i32 1
  %23 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %22, align 8
  store %struct.xlgmac_dma_desc* %23, %struct.xlgmac_dma_desc** %12, align 8
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %25 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %11, align 8
  %28 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %27, i32 0, i32 1
  %29 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %28, align 8
  %30 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %11, align 8
  %31 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %30, i32 0, i32 0
  %32 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.xlgmac_dma_desc* %29, i32* %31)
  %33 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %34 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %41 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %12, align 8
  %42 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %12, align 8
  %46 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %12, align 8
  %50 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load %struct.xlgmac_dma_desc*, %struct.xlgmac_dma_desc** %12, align 8
  %54 = getelementptr inbounds %struct.xlgmac_dma_desc, %struct.xlgmac_dma_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %40, i32 %44, i32 %48, i32 %52, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %13

60:                                               ; preds = %13
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
