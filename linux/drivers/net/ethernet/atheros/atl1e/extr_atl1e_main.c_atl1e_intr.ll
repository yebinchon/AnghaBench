; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.atl1e_adapter = type { %struct.atl1e_hw, i32, i32, i32 }
%struct.atl1e_hw = type { i32 }

@AT_MAX_INT_WORK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@REG_ISR = common dso_local global i32 0, align 4
@IMR_NORMAL_MASK = common dso_local global i32 0, align 4
@ISR_DIS_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ISR_GPHY = common dso_local global i32 0, align 4
@ISR_PHY_LINKDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pcie phy linkdown %x\0A\00", align 1
@ISR_DMAR_TO_RST = common dso_local global i32 0, align 4
@ISR_DMAW_TO_RST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"PCIE DMA RW error (status = 0x%x)\0A\00", align 1
@ISR_SMB = common dso_local global i32 0, align 4
@ISR_MANUAL = common dso_local global i32 0, align 4
@ISR_TX_EVENT = common dso_local global i32 0, align 4
@ISR_RX_EVENT = common dso_local global i32 0, align 4
@REG_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atl1e_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atl1e_adapter*, align 8
  %7 = alloca %struct.atl1e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.atl1e_adapter* %14, %struct.atl1e_adapter** %6, align 8
  %15 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %15, i32 0, i32 0
  store %struct.atl1e_hw* %16, %struct.atl1e_hw** %7, align 8
  %17 = load i32, i32* @AT_MAX_INT_WORK, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %152, %2
  %20 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %21 = load i32, i32* @REG_ISR, align 4
  %22 = call i32 @AT_READ_REG(%struct.atl1e_hw* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @IMR_NORMAL_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @ISR_DIS_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27, %19
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @AT_MAX_INT_WORK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %32
  br label %156

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @ISR_GPHY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %46 = call i32 @atl1e_clear_phy_int(%struct.atl1e_adapter* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %49 = load i32, i32* @REG_ISR, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @ISR_DIS_INT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %48, i32 %49, i32 %52)
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @ISR_PHY_LINKDOWN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %47
  %60 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @netdev_err(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %66 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @netif_running(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %72 = call i32 @atl1e_irq_reset(%struct.atl1e_adapter* %71)
  %73 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %74 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %73, i32 0, i32 2
  %75 = call i32 @schedule_work(i32* %74)
  br label %156

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @ISR_DMAR_TO_RST, align 4
  %80 = load i32, i32* @ISR_DMAW_TO_RST, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @netdev_err(i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %91 = call i32 @atl1e_irq_reset(%struct.atl1e_adapter* %90)
  %92 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %92, i32 0, i32 2
  %94 = call i32 @schedule_work(i32* %93)
  br label %156

95:                                               ; preds = %77
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @ISR_SMB, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %102 = call i32 @atl1e_update_hw_stats(%struct.atl1e_adapter* %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @ISR_GPHY, align 4
  %106 = load i32, i32* @ISR_MANUAL, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %117 = call i32 @atl1e_link_chg_event(%struct.atl1e_adapter* %116)
  br label %156

118:                                              ; preds = %103
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @ISR_TX_EVENT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %125 = call i32 @atl1e_clean_tx_irq(%struct.atl1e_adapter* %124)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @ISR_RX_EVENT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %133 = load i32, i32* @REG_IMR, align 4
  %134 = load i32, i32* @IMR_NORMAL_MASK, align 4
  %135 = load i32, i32* @ISR_RX_EVENT, align 4
  %136 = xor i32 %135, -1
  %137 = and i32 %134, %136
  %138 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %132, i32 %133, i32 %137)
  %139 = load %struct.atl1e_hw*, %struct.atl1e_hw** %7, align 8
  %140 = call i32 @AT_WRITE_FLUSH(%struct.atl1e_hw* %139)
  %141 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %142 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %141, i32 0, i32 1
  %143 = call i32 @napi_schedule_prep(i32* %142)
  %144 = call i64 @likely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %131
  %147 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %148 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %147, i32 0, i32 1
  %149 = call i32 @__napi_schedule(i32* %148)
  br label %150

150:                                              ; preds = %146, %131
  br label %151

151:                                              ; preds = %150, %126
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %8, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %19, label %156

156:                                              ; preds = %152, %110, %84, %70, %38
  %157 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %6, align 8
  %158 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %157, i32 0, i32 0
  %159 = load i32, i32* @REG_ISR, align 4
  %160 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %158, i32 %159, i32 0)
  %161 = load i32, i32* %9, align 4
  ret i32 %161
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @atl1e_clear_phy_int(%struct.atl1e_adapter*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @atl1e_irq_reset(%struct.atl1e_adapter*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atl1e_update_hw_stats(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_link_chg_event(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_clean_tx_irq(%struct.atl1e_adapter*) #1

declare dso_local i32 @AT_WRITE_FLUSH(%struct.atl1e_hw*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
