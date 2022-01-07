; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_setup_rxbdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_setup_rxbdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_hw = type { i64 }
%struct.enetc_bdr = type { i32, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENETC_RBBAR0 = common dso_local global i32 0, align 4
@ENETC_RBBAR1 = common dso_local global i32 0, align 4
@ENETC_RBLENR = common dso_local global i32 0, align 4
@ENETC_RBBSR = common dso_local global i32 0, align 4
@ENETC_RXB_DMA_SIZE = common dso_local global i32 0, align 4
@ENETC_RBPIR = common dso_local global i32 0, align 4
@ENETC_RBICIR0 = common dso_local global i32 0, align 4
@ENETC_RBICIR0_ICEN = common dso_local global i32 0, align 4
@ENETC_RBMR_EN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ENETC_RBMR_VTE = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@ENETC_RBCIR = common dso_local global i32 0, align 4
@ENETC_SIRXIDR = common dso_local global i64 0, align 8
@ENETC_RBMR = common dso_local global i32 0, align 4
@ENETC_RBMR_BDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_hw*, %struct.enetc_bdr*)* @enetc_setup_rxbdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_setup_rxbdr(%struct.enetc_hw* %0, %struct.enetc_bdr* %1) #0 {
  %3 = alloca %struct.enetc_hw*, align 8
  %4 = alloca %struct.enetc_bdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.enetc_hw* %0, %struct.enetc_hw** %3, align 8
  store %struct.enetc_bdr* %1, %struct.enetc_bdr** %4, align 8
  %7 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %8 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ENETC_RBBAR0, align 4
  %13 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %14 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = call i32 @enetc_rxbdr_wr(%struct.enetc_hw* %10, i32 %11, i32 %12, i32 %16)
  %18 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ENETC_RBBAR1, align 4
  %21 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %22 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @upper_32_bits(i32 %23)
  %25 = call i32 @enetc_rxbdr_wr(%struct.enetc_hw* %18, i32 %19, i32 %20, i32 %24)
  %26 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %27 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IS_ALIGNED(i32 %28, i32 64)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ENETC_RBLENR, align 4
  %37 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %38 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ENETC_RTBLENR_LEN(i32 %39)
  %41 = call i32 @enetc_rxbdr_wr(%struct.enetc_hw* %34, i32 %35, i32 %36, i32 %40)
  %42 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ENETC_RBBSR, align 4
  %45 = load i32, i32* @ENETC_RXB_DMA_SIZE, align 4
  %46 = call i32 @enetc_rxbdr_wr(%struct.enetc_hw* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ENETC_RBPIR, align 4
  %50 = call i32 @enetc_rxbdr_wr(%struct.enetc_hw* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ENETC_RBICIR0, align 4
  %54 = load i32, i32* @ENETC_RBICIR0_ICEN, align 4
  %55 = or i32 %54, 1
  %56 = call i32 @enetc_rxbdr_wr(%struct.enetc_hw* %51, i32 %52, i32 %53, i32 %55)
  %57 = load i32, i32* @ENETC_RBMR_EN, align 4
  store i32 %57, i32* %6, align 4
  %58 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %59 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %2
  %67 = load i32, i32* @ENETC_RBMR_VTE, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %2
  %71 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %72 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @RX, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @ENETC_RBCIR, align 4
  %77 = call i64 @ENETC_BDR(i32 %74, i32 %75, i32 %76)
  %78 = add nsw i64 %73, %77
  %79 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %80 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %82 = getelementptr inbounds %struct.enetc_hw, %struct.enetc_hw* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ENETC_SIRXIDR, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %87 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %89 = load %struct.enetc_bdr*, %struct.enetc_bdr** %4, align 8
  %90 = call i32 @enetc_bd_unused(%struct.enetc_bdr* %89)
  %91 = call i32 @enetc_refill_rx_ring(%struct.enetc_bdr* %88, i32 %90)
  %92 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ENETC_RBMR, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @enetc_rxbdr_wr(%struct.enetc_hw* %92, i32 %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @enetc_rxbdr_wr(%struct.enetc_hw*, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @ENETC_RTBLENR_LEN(i32) #1

declare dso_local i64 @ENETC_BDR(i32, i32, i32) #1

declare dso_local i32 @enetc_refill_rx_ring(%struct.enetc_bdr*, i32) #1

declare dso_local i32 @enetc_bd_unused(%struct.enetc_bdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
