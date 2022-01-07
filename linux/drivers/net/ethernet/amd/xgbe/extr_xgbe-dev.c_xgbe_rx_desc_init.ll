; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_rx_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_rx_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { %struct.xgbe_ring*, %struct.xgbe_prv_data* }
%struct.xgbe_ring = type { i32, i32 }
%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_ring_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"-->rx_desc_init\0A\00", align 1
@DMA_CH_RDRLR = common dso_local global i32 0, align 4
@DMA_CH_RDLR_HI = common dso_local global i32 0, align 4
@DMA_CH_RDLR_LO = common dso_local global i32 0, align 4
@DMA_CH_RDTR_LO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"<--rx_desc_init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_channel*)* @xgbe_rx_desc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_rx_desc_init(%struct.xgbe_channel* %0) #0 {
  %2 = alloca %struct.xgbe_channel*, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_ring*, align 8
  %5 = alloca %struct.xgbe_ring_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %2, align 8
  %8 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %8, i32 0, i32 1
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %9, align 8
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %3, align 8
  %11 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %12 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %11, i32 0, i32 0
  %13 = load %struct.xgbe_ring*, %struct.xgbe_ring** %12, align 8
  store %struct.xgbe_ring* %13, %struct.xgbe_ring** %4, align 8
  %14 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %15 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = call i32 @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %21 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %25, i32 %26)
  store %struct.xgbe_ring_data* %27, %struct.xgbe_ring_data** %5, align 8
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %29 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @xgbe_rx_desc_reset(%struct.xgbe_prv_data* %28, %struct.xgbe_ring_data* %29, i32 %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %37 = load i32, i32* @DMA_CH_RDRLR, align 4
  %38 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %39 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %40, 1
  %42 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %36, i32 %37, i32 %41)
  %43 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %43, i32 %44)
  store %struct.xgbe_ring_data* %45, %struct.xgbe_ring_data** %5, align 8
  %46 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %47 = load i32, i32* @DMA_CH_RDLR_HI, align 4
  %48 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %49 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @upper_32_bits(i32 %50)
  %52 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %46, i32 %47, i32 %51)
  %53 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %54 = load i32, i32* @DMA_CH_RDLR_LO, align 4
  %55 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %56 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lower_32_bits(i32 %57)
  %59 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %53, i32 %54, i32 %58)
  %60 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %63 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %61, %64
  %66 = sub i32 %65, 1
  %67 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %60, i32 %66)
  store %struct.xgbe_ring_data* %67, %struct.xgbe_ring_data** %5, align 8
  %68 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %69 = load i32, i32* @DMA_CH_RDTR_LO, align 4
  %70 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %71 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lower_32_bits(i32 %72)
  %74 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %68, i32 %69, i32 %73)
  %75 = call i32 @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @xgbe_rx_desc_reset(%struct.xgbe_prv_data*, %struct.xgbe_ring_data*, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
