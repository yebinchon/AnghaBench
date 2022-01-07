; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1e_adapter = type { i32, %struct.atl1e_hw }
%struct.atl1e_hw = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@REG_ISR = common dso_local global i32 0, align 4
@REG_WOL_CTRL = common dso_local global i32 0, align 4
@REG_IRQ_MODU_TIMER_INIT = common dso_local global i32 0, align 4
@REG_IRQ_MODU_TIMER2_INIT = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_LED_MODE = common dso_local global i32 0, align 4
@MASTER_CTRL_ITIMER_EN = common dso_local global i32 0, align 4
@MASTER_CTRL_ITIMER2_EN = common dso_local global i32 0, align 4
@REG_TRIG_RRD_THRESH = common dso_local global i32 0, align 4
@REG_TRIG_TPD_THRESH = common dso_local global i32 0, align 4
@REG_TRIG_RXTIMER = common dso_local global i32 0, align 4
@REG_TRIG_TXTIMER = common dso_local global i32 0, align 4
@REG_CMBDISDMA_TIMER = common dso_local global i32 0, align 4
@REG_MTU = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@REG_SMB_STAT_TIMER = common dso_local global i32 0, align 4
@ISR_PHY_LINKDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"atl1e_configure failed, PCIE phy link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1e_adapter*)* @atl1e_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_configure(%struct.atl1e_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.atl1e_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.atl1e_adapter* %0, %struct.atl1e_adapter** %3, align 8
  %6 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %6, i32 0, i32 1
  store %struct.atl1e_hw* %7, %struct.atl1e_hw** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %9 = load i32, i32* @REG_ISR, align 4
  %10 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %8, i32 %9, i32 -1)
  %11 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %12 = call i32 @atl1e_hw_set_mac_addr(%struct.atl1e_hw* %11)
  %13 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %14 = load i32, i32* @REG_WOL_CTRL, align 4
  %15 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %13, i32 %14, i32 0)
  %16 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %17 = call i32 @atl1e_configure_des_ring(%struct.atl1e_adapter* %16)
  %18 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %19 = load i32, i32* @REG_IRQ_MODU_TIMER_INIT, align 4
  %20 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %21 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %18, i32 %19, i32 %22)
  %24 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %25 = load i32, i32* @REG_IRQ_MODU_TIMER2_INIT, align 4
  %26 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %27 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %24, i32 %25, i32 %28)
  %30 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %31 = load i32, i32* @REG_MASTER_CTRL, align 4
  %32 = load i32, i32* @MASTER_CTRL_LED_MODE, align 4
  %33 = load i32, i32* @MASTER_CTRL_ITIMER_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MASTER_CTRL_ITIMER2_EN, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %30, i32 %31, i32 %36)
  %38 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %39 = load i32, i32* @REG_TRIG_RRD_THRESH, align 4
  %40 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %41 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %38, i32 %39, i32 %42)
  %44 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %45 = load i32, i32* @REG_TRIG_TPD_THRESH, align 4
  %46 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %47 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %44, i32 %45, i32 %48)
  %50 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %51 = load i32, i32* @REG_TRIG_RXTIMER, align 4
  %52 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %53 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %50, i32 %51, i32 %54)
  %56 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %57 = load i32, i32* @REG_TRIG_TXTIMER, align 4
  %58 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %59 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %56, i32 %57, i32 %60)
  %62 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %63 = load i32, i32* @REG_CMBDISDMA_TIMER, align 4
  %64 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %65 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @AT_WRITE_REGW(%struct.atl1e_hw* %62, i32 %63, i32 %66)
  %68 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %69 = load i32, i32* @REG_MTU, align 4
  %70 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %71 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETH_HLEN, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @VLAN_HLEN, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* @ETH_FCS_LEN, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %68, i32 %69, i32 %78)
  %80 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %81 = call i32 @atl1e_configure_tx(%struct.atl1e_adapter* %80)
  %82 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %83 = call i32 @atl1e_configure_rx(%struct.atl1e_adapter* %82)
  %84 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %85 = call i32 @atl1e_configure_dma(%struct.atl1e_adapter* %84)
  %86 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %87 = load i32, i32* @REG_SMB_STAT_TIMER, align 4
  %88 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %89 = getelementptr inbounds %struct.atl1e_hw, %struct.atl1e_hw* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %86, i32 %87, i32 %90)
  %92 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %93 = load i32, i32* @REG_ISR, align 4
  %94 = call i32 @AT_READ_REG(%struct.atl1e_hw* %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @ISR_PHY_LINKDOWN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %1
  %103 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @netdev_err(i32 %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %111

107:                                              ; preds = %1
  %108 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %109 = load i32, i32* @REG_ISR, align 4
  %110 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %108, i32 %109, i32 2147483647)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @atl1e_hw_set_mac_addr(%struct.atl1e_hw*) #1

declare dso_local i32 @atl1e_configure_des_ring(%struct.atl1e_adapter*) #1

declare dso_local i32 @AT_WRITE_REGW(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @atl1e_configure_tx(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_configure_rx(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_configure_dma(%struct.atl1e_adapter*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
