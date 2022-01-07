; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.atl1c_hw }
%struct.atl1c_hw = type { i32, i64, i32, i32, i32, i32, i32 }

@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_TX_ITIMER_EN = common dso_local global i32 0, align 4
@MASTER_CTRL_RX_ITIMER_EN = common dso_local global i32 0, align 4
@MASTER_CTRL_INT_RDCLR = common dso_local global i32 0, align 4
@REG_ISR = common dso_local global i32 0, align 4
@REG_WOL_CTRL = common dso_local global i32 0, align 4
@CLK_GATING_EN_ALL = common dso_local global i32 0, align 4
@ATL1C_CLK_GATING_EN = common dso_local global i32 0, align 4
@athr_l2c_b = common dso_local global i64 0, align 8
@CLK_GATING_RXMAC_EN = common dso_local global i32 0, align 4
@REG_CLK_GATING_CTRL = common dso_local global i32 0, align 4
@REG_INT_RETRIG_TIMER = common dso_local global i32 0, align 4
@INT_RETRIG_TIMER_MASK = common dso_local global i32 0, align 4
@ATL1C_INTR_MODRT_ENABLE = common dso_local global i32 0, align 4
@IRQ_MODRT_TIMER_MASK = common dso_local global i32 0, align 4
@IRQ_MODRT_TX_TIMER_SHIFT = common dso_local global i32 0, align 4
@IRQ_MODRT_RX_TIMER_SHIFT = common dso_local global i32 0, align 4
@REG_IRQ_MODRT_TIMER_INIT = common dso_local global i32 0, align 4
@ATL1C_INTR_CLEAR_ON_READ = common dso_local global i32 0, align 4
@MASTER_CTRL_SA_TIMER_EN = common dso_local global i32 0, align 4
@REG_SMB_STAT_TIMER = common dso_local global i32 0, align 4
@SMB_STAT_TIMER_MASK = common dso_local global i32 0, align 4
@REG_MTU = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*)* @atl1c_configure_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_configure_mac(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %7, i32 0, i32 0
  store %struct.atl1c_hw* %8, %struct.atl1c_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %10 = load i32, i32* @REG_MASTER_CTRL, align 4
  %11 = call i32 @AT_READ_REG(%struct.atl1c_hw* %9, i32 %10, i32* %4)
  %12 = load i32, i32* @MASTER_CTRL_TX_ITIMER_EN, align 4
  %13 = load i32, i32* @MASTER_CTRL_RX_ITIMER_EN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MASTER_CTRL_INT_RDCLR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %21 = load i32, i32* @REG_ISR, align 4
  %22 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %20, i32 %21, i32 -1)
  %23 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %24 = load i32, i32* @REG_WOL_CTRL, align 4
  %25 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %23, i32 %24, i32 0)
  %26 = load i32, i32* @CLK_GATING_EN_ALL, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %28 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ATL1C_CLK_GATING_EN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %1
  %34 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %35 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @athr_l2c_b, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @CLK_GATING_RXMAC_EN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %46

45:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %48 = load i32, i32* @REG_CLK_GATING_CTRL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %47, i32 %48, i32 %49)
  %51 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %52 = load i32, i32* @REG_INT_RETRIG_TIMER, align 4
  %53 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %54 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @INT_RETRIG_TIMER_MASK, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %51, i32 %52, i32 %57)
  %59 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %60 = call i32 @atl1c_configure_des_ring(%struct.atl1c_adapter* %59)
  %61 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %62 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ATL1C_INTR_MODRT_ENABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %46
  %68 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %69 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IRQ_MODRT_TIMER_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @IRQ_MODRT_TX_TIMER_SHIFT, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %5, align 4
  %75 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %76 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IRQ_MODRT_TIMER_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @IRQ_MODRT_RX_TIMER_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %85 = load i32, i32* @REG_IRQ_MODRT_TIMER_INIT, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @MASTER_CTRL_TX_ITIMER_EN, align 4
  %89 = load i32, i32* @MASTER_CTRL_RX_ITIMER_EN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %67, %46
  %94 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %95 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ATL1C_INTR_CLEAR_ON_READ, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* @MASTER_CTRL_INT_RDCLR, align 4
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* @MASTER_CTRL_SA_TIMER_EN, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %109 = load i32, i32* @REG_MASTER_CTRL, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %108, i32 %109, i32 %110)
  %112 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %113 = load i32, i32* @REG_SMB_STAT_TIMER, align 4
  %114 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %115 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SMB_STAT_TIMER_MASK, align 4
  %118 = and i32 %116, %117
  %119 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %112, i32 %113, i32 %118)
  %120 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %121 = load i32, i32* @REG_MTU, align 4
  %122 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %123 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ETH_HLEN, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @VLAN_HLEN, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* @ETH_FCS_LEN, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %120, i32 %121, i32 %130)
  %132 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %133 = call i32 @atl1c_configure_tx(%struct.atl1c_adapter* %132)
  %134 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %135 = call i32 @atl1c_configure_rx(%struct.atl1c_adapter* %134)
  %136 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %137 = call i32 @atl1c_configure_dma(%struct.atl1c_adapter* %136)
  ret i32 0
}

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @atl1c_configure_des_ring(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_configure_tx(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_configure_rx(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_configure_dma(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
