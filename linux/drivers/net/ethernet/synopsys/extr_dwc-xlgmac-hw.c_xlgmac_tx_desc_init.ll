; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_tx_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_tx_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { %struct.xlgmac_ring* }
%struct.xlgmac_ring = type { i32, i32 }
%struct.xlgmac_desc_data = type { i32 }

@DMA_CH_TDRLR = common dso_local global i32 0, align 4
@DMA_CH_TDLR_HI = common dso_local global i32 0, align 4
@DMA_CH_TDLR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_channel*)* @xlgmac_tx_desc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_tx_desc_init(%struct.xlgmac_channel* %0) #0 {
  %2 = alloca %struct.xlgmac_channel*, align 8
  %3 = alloca %struct.xlgmac_ring*, align 8
  %4 = alloca %struct.xlgmac_desc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %2, align 8
  %7 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %8 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %7, i32 0, i32 0
  %9 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %8, align 8
  store %struct.xlgmac_ring* %9, %struct.xlgmac_ring** %3, align 8
  %10 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %3, align 8
  %11 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %3, align 8
  %16 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %20, i32 %21)
  store %struct.xlgmac_desc_data* %22, %struct.xlgmac_desc_data** %4, align 8
  %23 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %4, align 8
  %24 = call i32 @xlgmac_tx_desc_reset(%struct.xlgmac_desc_data* %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %3, align 8
  %30 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %34 = load i32, i32* @DMA_CH_TDRLR, align 4
  %35 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %33, i32 %34)
  %36 = call i32 @writel(i32 %32, i32 %35)
  %37 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %37, i32 %38)
  store %struct.xlgmac_desc_data* %39, %struct.xlgmac_desc_data** %4, align 8
  %40 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %4, align 8
  %41 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @upper_32_bits(i32 %42)
  %44 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %45 = load i32, i32* @DMA_CH_TDLR_HI, align 4
  %46 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %44, i32 %45)
  %47 = call i32 @writel(i32 %43, i32 %46)
  %48 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %4, align 8
  %49 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @lower_32_bits(i32 %50)
  %52 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %53 = load i32, i32* @DMA_CH_TDLR_LO, align 4
  %54 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %52, i32 %53)
  %55 = call i32 @writel(i32 %51, i32 %54)
  ret void
}

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @xlgmac_tx_desc_reset(%struct.xlgmac_desc_data*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
