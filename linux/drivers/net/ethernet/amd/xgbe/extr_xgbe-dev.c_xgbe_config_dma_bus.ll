; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_dma_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_dma_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@DMA_SBMR = common dso_local global i32 0, align 4
@EAME = common dso_local global i32 0, align 4
@UNDEF = common dso_local global i32 0, align 4
@BLEN = common dso_local global i32 0, align 4
@AAL = common dso_local global i32 0, align 4
@RD_OSR_LMT = common dso_local global i32 0, align 4
@WR_OSR_LMT = common dso_local global i32 0, align 4
@DMA_TXEDMACR = common dso_local global i32 0, align 4
@TDPS = common dso_local global i32 0, align 4
@DMA_RXEDMACR = common dso_local global i32 0, align 4
@RDPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_dma_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_dma_bus(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = load i32, i32* @DMA_SBMR, align 4
  %6 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DMA_SBMR, align 4
  %9 = load i32, i32* @EAME, align 4
  %10 = call i32 @XGMAC_SET_BITS(i32 %7, i32 %8, i32 %9, i32 1)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @DMA_SBMR, align 4
  %13 = load i32, i32* @UNDEF, align 4
  %14 = call i32 @XGMAC_SET_BITS(i32 %11, i32 %12, i32 %13, i32 1)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DMA_SBMR, align 4
  %17 = load i32, i32* @BLEN, align 4
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 2
  %22 = call i32 @XGMAC_SET_BITS(i32 %15, i32 %16, i32 %17, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @DMA_SBMR, align 4
  %25 = load i32, i32* @AAL, align 4
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @XGMAC_SET_BITS(i32 %23, i32 %24, i32 %25, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @DMA_SBMR, align 4
  %32 = load i32, i32* @RD_OSR_LMT, align 4
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @XGMAC_SET_BITS(i32 %30, i32 %31, i32 %32, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @DMA_SBMR, align 4
  %40 = load i32, i32* @WR_OSR_LMT, align 4
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @XGMAC_SET_BITS(i32 %38, i32 %39, i32 %40, i32 %44)
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %47 = load i32, i32* @DMA_SBMR, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %46, i32 %47, i32 %48)
  %50 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %51 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %1
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = load i32, i32* @DMA_TXEDMACR, align 4
  %59 = load i32, i32* @TDPS, align 4
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %57, i32 %58, i32 %59, i64 %64)
  br label %66

66:                                               ; preds = %56, %1
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %68 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %75 = load i32, i32* @DMA_RXEDMACR, align 4
  %76 = load i32, i32* @RDPS, align 4
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %78 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %77, i32 0, i32 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %74, i32 %75, i32 %76, i64 %81)
  br label %83

83:                                               ; preds = %73, %66
  ret void
}

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
