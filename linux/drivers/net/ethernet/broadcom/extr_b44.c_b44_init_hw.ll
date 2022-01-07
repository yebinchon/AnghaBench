; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@B44_CHIP_RESET_FULL = common dso_local global i32 0, align 4
@B44_FULL_RESET = common dso_local global i32 0, align 4
@B44_MAC_CTRL = common dso_local global i32 0, align 4
@MAC_CTRL_CRC32_ENAB = common dso_local global i32 0, align 4
@MAC_CTRL_PHY_LEDCTRL = common dso_local global i32 0, align 4
@B44_RCV_LAZY = common dso_local global i32 0, align 4
@RCV_LAZY_FC_SHIFT = common dso_local global i32 0, align 4
@B44_RXMAXLEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@RX_HEADER_LEN = common dso_local global i32 0, align 4
@B44_TXMAXLEN = common dso_local global i32 0, align 4
@B44_TX_WMARK = common dso_local global i32 0, align 4
@B44_PARTIAL_RESET = common dso_local global i32 0, align 4
@B44_DMARX_CTRL = common dso_local global i32 0, align 4
@DMARX_CTRL_ENABLE = common dso_local global i32 0, align 4
@RX_PKT_OFFSET = common dso_local global i32 0, align 4
@DMARX_CTRL_ROSHIFT = common dso_local global i32 0, align 4
@B44_DMATX_CTRL = common dso_local global i32 0, align 4
@DMATX_CTRL_ENABLE = common dso_local global i32 0, align 4
@B44_DMATX_ADDR = common dso_local global i32 0, align 4
@B44_DMARX_ADDR = common dso_local global i32 0, align 4
@B44_DMARX_PTR = common dso_local global i32 0, align 4
@B44_MIB_CTRL = common dso_local global i32 0, align 4
@MIB_CTRL_CLR_ON_READ = common dso_local global i32 0, align 4
@B44_ENET_CTRL = common dso_local global i32 0, align 4
@ENET_CTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*, i32)* @b44_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_init_hw(%struct.b44* %0, i32 %1) #0 {
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b44*, %struct.b44** %3, align 8
  %7 = load i32, i32* @B44_CHIP_RESET_FULL, align 4
  %8 = call i32 @b44_chip_reset(%struct.b44* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @B44_FULL_RESET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.b44*, %struct.b44** %3, align 8
  %14 = call i32 @b44_phy_reset(%struct.b44* %13)
  %15 = load %struct.b44*, %struct.b44** %3, align 8
  %16 = call i32 @b44_setup_phy(%struct.b44* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.b44*, %struct.b44** %3, align 8
  %19 = load i32, i32* @B44_MAC_CTRL, align 4
  %20 = load i32, i32* @MAC_CTRL_CRC32_ENAB, align 4
  %21 = load i32, i32* @MAC_CTRL_PHY_LEDCTRL, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bw32(%struct.b44* %18, i32 %19, i32 %22)
  %24 = load %struct.b44*, %struct.b44** %3, align 8
  %25 = load i32, i32* @B44_RCV_LAZY, align 4
  %26 = load i32, i32* @RCV_LAZY_FC_SHIFT, align 4
  %27 = shl i32 1, %26
  %28 = call i32 @bw32(%struct.b44* %24, i32 %25, i32 %27)
  %29 = load %struct.b44*, %struct.b44** %3, align 8
  %30 = getelementptr inbounds %struct.b44, %struct.b44* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @__b44_set_rx_mode(%struct.TYPE_3__* %31)
  %33 = load %struct.b44*, %struct.b44** %3, align 8
  %34 = load i32, i32* @B44_RXMAXLEN, align 4
  %35 = load %struct.b44*, %struct.b44** %3, align 8
  %36 = getelementptr inbounds %struct.b44, %struct.b44* %35, i32 0, i32 5
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_HLEN, align 4
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 8
  %43 = load i32, i32* @RX_HEADER_LEN, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @bw32(%struct.b44* %33, i32 %34, i32 %44)
  %46 = load %struct.b44*, %struct.b44** %3, align 8
  %47 = load i32, i32* @B44_TXMAXLEN, align 4
  %48 = load %struct.b44*, %struct.b44** %3, align 8
  %49 = getelementptr inbounds %struct.b44, %struct.b44* %48, i32 0, i32 5
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ETH_HLEN, align 4
  %54 = add nsw i32 %52, %53
  %55 = add nsw i32 %54, 8
  %56 = load i32, i32* @RX_HEADER_LEN, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @bw32(%struct.b44* %46, i32 %47, i32 %57)
  %59 = load %struct.b44*, %struct.b44** %3, align 8
  %60 = load i32, i32* @B44_TX_WMARK, align 4
  %61 = call i32 @bw32(%struct.b44* %59, i32 %60, i32 56)
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @B44_PARTIAL_RESET, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %17
  %66 = load %struct.b44*, %struct.b44** %3, align 8
  %67 = load i32, i32* @B44_DMARX_CTRL, align 4
  %68 = load i32, i32* @DMARX_CTRL_ENABLE, align 4
  %69 = load i32, i32* @RX_PKT_OFFSET, align 4
  %70 = load i32, i32* @DMARX_CTRL_ROSHIFT, align 4
  %71 = shl i32 %69, %70
  %72 = or i32 %68, %71
  %73 = call i32 @bw32(%struct.b44* %66, i32 %67, i32 %72)
  br label %122

74:                                               ; preds = %17
  %75 = load %struct.b44*, %struct.b44** %3, align 8
  %76 = load i32, i32* @B44_DMATX_CTRL, align 4
  %77 = load i32, i32* @DMATX_CTRL_ENABLE, align 4
  %78 = call i32 @bw32(%struct.b44* %75, i32 %76, i32 %77)
  %79 = load %struct.b44*, %struct.b44** %3, align 8
  %80 = load i32, i32* @B44_DMATX_ADDR, align 4
  %81 = load %struct.b44*, %struct.b44** %3, align 8
  %82 = getelementptr inbounds %struct.b44, %struct.b44* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.b44*, %struct.b44** %3, align 8
  %85 = getelementptr inbounds %struct.b44, %struct.b44* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = call i32 @bw32(%struct.b44* %79, i32 %80, i32 %87)
  %89 = load %struct.b44*, %struct.b44** %3, align 8
  %90 = load i32, i32* @B44_DMARX_CTRL, align 4
  %91 = load i32, i32* @DMARX_CTRL_ENABLE, align 4
  %92 = load i32, i32* @RX_PKT_OFFSET, align 4
  %93 = load i32, i32* @DMARX_CTRL_ROSHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = call i32 @bw32(%struct.b44* %89, i32 %90, i32 %95)
  %97 = load %struct.b44*, %struct.b44** %3, align 8
  %98 = load i32, i32* @B44_DMARX_ADDR, align 4
  %99 = load %struct.b44*, %struct.b44** %3, align 8
  %100 = getelementptr inbounds %struct.b44, %struct.b44* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.b44*, %struct.b44** %3, align 8
  %103 = getelementptr inbounds %struct.b44, %struct.b44* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = call i32 @bw32(%struct.b44* %97, i32 %98, i32 %105)
  %107 = load %struct.b44*, %struct.b44** %3, align 8
  %108 = load i32, i32* @B44_DMARX_PTR, align 4
  %109 = load %struct.b44*, %struct.b44** %3, align 8
  %110 = getelementptr inbounds %struct.b44, %struct.b44* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @bw32(%struct.b44* %107, i32 %108, i32 %111)
  %113 = load %struct.b44*, %struct.b44** %3, align 8
  %114 = getelementptr inbounds %struct.b44, %struct.b44* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.b44*, %struct.b44** %3, align 8
  %117 = getelementptr inbounds %struct.b44, %struct.b44* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.b44*, %struct.b44** %3, align 8
  %119 = load i32, i32* @B44_MIB_CTRL, align 4
  %120 = load i32, i32* @MIB_CTRL_CLR_ON_READ, align 4
  %121 = call i32 @bw32(%struct.b44* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %74, %65
  %123 = load %struct.b44*, %struct.b44** %3, align 8
  %124 = load i32, i32* @B44_ENET_CTRL, align 4
  %125 = call i32 @br32(%struct.b44* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load %struct.b44*, %struct.b44** %3, align 8
  %127 = load i32, i32* @B44_ENET_CTRL, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @ENET_CTRL_ENABLE, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @bw32(%struct.b44* %126, i32 %127, i32 %130)
  %132 = load %struct.b44*, %struct.b44** %3, align 8
  %133 = getelementptr inbounds %struct.b44, %struct.b44* %132, i32 0, i32 5
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = call i32 @netdev_reset_queue(%struct.TYPE_3__* %134)
  ret void
}

declare dso_local i32 @b44_chip_reset(%struct.b44*, i32) #1

declare dso_local i32 @b44_phy_reset(%struct.b44*) #1

declare dso_local i32 @b44_setup_phy(%struct.b44*) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @__b44_set_rx_mode(%struct.TYPE_3__*) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @netdev_reset_queue(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
