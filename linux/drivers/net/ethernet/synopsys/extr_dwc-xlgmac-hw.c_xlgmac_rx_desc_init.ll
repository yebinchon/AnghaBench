; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_rx_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_rx_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { %struct.xlgmac_ring*, %struct.xlgmac_pdata* }
%struct.xlgmac_ring = type { i32, i32 }
%struct.xlgmac_pdata = type { i32 }
%struct.xlgmac_desc_data = type { i32 }

@DMA_CH_RDRLR = common dso_local global i32 0, align 4
@DMA_CH_RDLR_HI = common dso_local global i32 0, align 4
@DMA_CH_RDLR_LO = common dso_local global i32 0, align 4
@DMA_CH_RDTR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_channel*)* @xlgmac_rx_desc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_rx_desc_init(%struct.xlgmac_channel* %0) #0 {
  %2 = alloca %struct.xlgmac_channel*, align 8
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.xlgmac_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xlgmac_desc_data*, align 8
  %7 = alloca i32, align 4
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %2, align 8
  %8 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %9 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %8, i32 0, i32 1
  %10 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %9, align 8
  store %struct.xlgmac_pdata* %10, %struct.xlgmac_pdata** %3, align 8
  %11 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %11, i32 0, i32 0
  %13 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %12, align 8
  store %struct.xlgmac_ring* %13, %struct.xlgmac_ring** %4, align 8
  %14 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %15 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %20 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %24, i32 %25)
  store %struct.xlgmac_desc_data* %26, %struct.xlgmac_desc_data** %6, align 8
  %27 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %28 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @xlgmac_rx_desc_reset(%struct.xlgmac_pdata* %27, %struct.xlgmac_desc_data* %28, i32 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %36 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %37, 1
  %39 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %40 = load i32, i32* @DMA_CH_RDRLR, align 4
  %41 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %39, i32 %40)
  %42 = call i32 @writel(i32 %38, i32 %41)
  %43 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %43, i32 %44)
  store %struct.xlgmac_desc_data* %45, %struct.xlgmac_desc_data** %6, align 8
  %46 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %6, align 8
  %47 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @upper_32_bits(i32 %48)
  %50 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %51 = load i32, i32* @DMA_CH_RDLR_HI, align 4
  %52 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %50, i32 %51)
  %53 = call i32 @writel(i32 %49, i32 %52)
  %54 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %6, align 8
  %55 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lower_32_bits(i32 %56)
  %58 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %59 = load i32, i32* @DMA_CH_RDLR_LO, align 4
  %60 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %58, i32 %59)
  %61 = call i32 @writel(i32 %57, i32 %60)
  %62 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %65 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %63, %66
  %68 = sub i32 %67, 1
  %69 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %62, i32 %68)
  store %struct.xlgmac_desc_data* %69, %struct.xlgmac_desc_data** %6, align 8
  %70 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %6, align 8
  %71 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @lower_32_bits(i32 %72)
  %74 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %2, align 8
  %75 = load i32, i32* @DMA_CH_RDTR_LO, align 4
  %76 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %74, i32 %75)
  %77 = call i32 @writel(i32 %73, i32 %76)
  ret void
}

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @xlgmac_rx_desc_reset(%struct.xlgmac_pdata*, %struct.xlgmac_desc_data*, i32) #1

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
