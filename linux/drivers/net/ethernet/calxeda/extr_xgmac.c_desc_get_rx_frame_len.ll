; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_desc_get_rx_frame_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/calxeda/extr_xgmac.c_desc_get_rx_frame_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgmac_dma_desc = type { i32 }

@RXDESC_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@RXDESC_FRAME_LEN_OFFSET = common dso_local global i32 0, align 4
@RXDESC_FRAME_TYPE = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgmac_dma_desc*)* @desc_get_rx_frame_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @desc_get_rx_frame_len(%struct.xgmac_dma_desc* %0) #0 {
  %2 = alloca %struct.xgmac_dma_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgmac_dma_desc* %0, %struct.xgmac_dma_desc** %2, align 8
  %5 = load %struct.xgmac_dma_desc*, %struct.xgmac_dma_desc** %2, align 8
  %6 = getelementptr inbounds %struct.xgmac_dma_desc, %struct.xgmac_dma_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le32_to_cpu(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @RXDESC_FRAME_LEN_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @RXDESC_FRAME_LEN_OFFSET, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RXDESC_FRAME_TYPE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i64, i64* @ETH_FCS_LEN, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
