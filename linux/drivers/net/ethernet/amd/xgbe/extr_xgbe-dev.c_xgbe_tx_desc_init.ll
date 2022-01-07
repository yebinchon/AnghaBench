; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_tx_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_tx_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { %struct.xgbe_ring* }
%struct.xgbe_ring = type { i32, i32 }
%struct.xgbe_ring_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"-->tx_desc_init\0A\00", align 1
@DMA_CH_TDRLR = common dso_local global i32 0, align 4
@DMA_CH_TDLR_HI = common dso_local global i32 0, align 4
@DMA_CH_TDLR_LO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"<--tx_desc_init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_channel*)* @xgbe_tx_desc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_tx_desc_init(%struct.xgbe_channel* %0) #0 {
  %2 = alloca %struct.xgbe_channel*, align 8
  %3 = alloca %struct.xgbe_ring*, align 8
  %4 = alloca %struct.xgbe_ring_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %2, align 8
  %7 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %7, i32 0, i32 0
  %9 = load %struct.xgbe_ring*, %struct.xgbe_ring** %8, align 8
  store %struct.xgbe_ring* %9, %struct.xgbe_ring** %3, align 8
  %10 = load %struct.xgbe_ring*, %struct.xgbe_ring** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = call i32 @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.xgbe_ring*, %struct.xgbe_ring** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.xgbe_ring*, %struct.xgbe_ring** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %21, i32 %22)
  store %struct.xgbe_ring_data* %23, %struct.xgbe_ring_data** %4, align 8
  %24 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %25 = call i32 @xgbe_tx_desc_reset(%struct.xgbe_ring_data* %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %31 = load i32, i32* @DMA_CH_TDRLR, align 4
  %32 = load %struct.xgbe_ring*, %struct.xgbe_ring** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %30, i32 %31, i32 %35)
  %37 = load %struct.xgbe_ring*, %struct.xgbe_ring** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %37, i32 %38)
  store %struct.xgbe_ring_data* %39, %struct.xgbe_ring_data** %4, align 8
  %40 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %41 = load i32, i32* @DMA_CH_TDLR_HI, align 4
  %42 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %43 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @upper_32_bits(i32 %44)
  %46 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %40, i32 %41, i32 %45)
  %47 = load %struct.xgbe_channel*, %struct.xgbe_channel** %2, align 8
  %48 = load i32, i32* @DMA_CH_TDLR_LO, align 4
  %49 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %4, align 8
  %50 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @lower_32_bits(i32 %51)
  %53 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %47, i32 %48, i32 %52)
  %54 = call i32 @DBGPR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @xgbe_tx_desc_reset(%struct.xgbe_ring_data*) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
