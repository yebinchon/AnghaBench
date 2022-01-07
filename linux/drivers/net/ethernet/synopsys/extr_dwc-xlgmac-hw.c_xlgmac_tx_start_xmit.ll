; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_tx_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_tx_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i32, i32, %struct.xlgmac_pdata* }
%struct.xlgmac_pdata = type { i64 }
%struct.xlgmac_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.xlgmac_desc_data = type { i32 }

@DMA_CH_TDTR_LO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_channel*, %struct.xlgmac_ring*)* @xlgmac_tx_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_tx_start_xmit(%struct.xlgmac_channel* %0, %struct.xlgmac_ring* %1) #0 {
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca %struct.xlgmac_ring*, align 8
  %5 = alloca %struct.xlgmac_pdata*, align 8
  %6 = alloca %struct.xlgmac_desc_data*, align 8
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %3, align 8
  store %struct.xlgmac_ring* %1, %struct.xlgmac_ring** %4, align 8
  %7 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %8 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %7, i32 0, i32 2
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %8, align 8
  store %struct.xlgmac_pdata* %9, %struct.xlgmac_pdata** %5, align 8
  %10 = call i32 (...) @wmb()
  %11 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %12 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %13 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring* %11, i32 %14)
  store %struct.xlgmac_desc_data* %15, %struct.xlgmac_desc_data** %6, align 8
  %16 = load %struct.xlgmac_desc_data*, %struct.xlgmac_desc_data** %6, align 8
  %17 = getelementptr inbounds %struct.xlgmac_desc_data, %struct.xlgmac_desc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %21 = load i32, i32* @DMA_CH_TDTR_LO, align 4
  %22 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %20, i32 %21)
  %23 = call i32 @writel(i32 %19, i32 %22)
  %24 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %25 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %2
  %29 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %30 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %35 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %37 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %36, i32 0, i32 1
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %5, align 8
  %40 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @usecs_to_jiffies(i64 %41)
  %43 = add nsw i64 %38, %42
  %44 = call i32 @mod_timer(i32* %37, i64 %43)
  br label %45

45:                                               ; preds = %33, %28, %2
  %46 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %4, align 8
  %47 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local %struct.xlgmac_desc_data* @XLGMAC_GET_DESC_DATA(%struct.xlgmac_ring*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
