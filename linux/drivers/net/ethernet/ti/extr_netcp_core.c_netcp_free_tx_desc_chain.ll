; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_tx_desc_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_tx_desc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i32, i32, i32 }
%struct.knav_dma_desc = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bad Tx desc buf(%pad), len(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to unmap Tx desc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netcp_intf*, %struct.knav_dma_desc*, i32)* @netcp_free_tx_desc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_free_tx_desc_chain(%struct.netcp_intf* %0, %struct.knav_dma_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.netcp_intf*, align 8
  %5 = alloca %struct.knav_dma_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.knav_dma_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.netcp_intf* %0, %struct.netcp_intf** %4, align 8
  store %struct.knav_dma_desc* %1, %struct.knav_dma_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %5, align 8
  store %struct.knav_dma_desc* %11, %struct.knav_dma_desc** %7, align 8
  br label %12

12:                                               ; preds = %60, %3
  %13 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  %14 = icmp ne %struct.knav_dma_desc* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  %17 = call i32 @get_pkt_info(i64* %9, i32* %10, i64* %8, %struct.knav_dma_desc* %16)
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %25 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_single(i32 %26, i64 %27, i32 %28, i32 %29)
  br label %37

31:                                               ; preds = %20, %15
  %32 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %33 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64* %9, i32 %35)
  br label %37

37:                                               ; preds = %31, %23
  %38 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %39 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  %42 = call i32 @knav_pool_desc_put(i32 %40, %struct.knav_dma_desc* %41)
  store %struct.knav_dma_desc* null, %struct.knav_dma_desc** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %47 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.knav_dma_desc* @knav_pool_desc_unmap(i32 %48, i64 %49, i32 %50)
  store %struct.knav_dma_desc* %51, %struct.knav_dma_desc** %7, align 8
  %52 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %7, align 8
  %53 = icmp ne %struct.knav_dma_desc* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %56 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %45
  br label %60

60:                                               ; preds = %59, %37
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local i32 @get_pkt_info(i64*, i32*, i64*, %struct.knav_dma_desc*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64*, i32) #1

declare dso_local i32 @knav_pool_desc_put(i32, %struct.knav_dma_desc*) #1

declare dso_local %struct.knav_dma_desc* @knav_pool_desc_unmap(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
