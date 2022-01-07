; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.bcmgenet_priv = type { i32, i32, i64, i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bcmgenet_open\0A\00", align 1
@GENET_POWER_PASSIVE = common dso_local global i32 0, align 4
@UMAC_CMD = common dso_local global i32 0, align 4
@CMD_CRC_FWD = common dso_local global i32 0, align 4
@EXT_EXT_PWR_MGMT = common dso_local global i32 0, align 4
@EXT_ENERGY_DET_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to initialize DMA\0A\00", align 1
@bcmgenet_isr0 = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"can't request IRQ %d\0A\00", align 1
@bcmgenet_isr1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to connect to PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcmgenet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcmgenet_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.bcmgenet_priv* %9, %struct.bcmgenet_priv** %4, align 8
  %10 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %11 = load i32, i32* @ifup, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @netif_dbg(%struct.bcmgenet_priv* %10, i32 %11, %struct.net_device* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %15 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_prepare_enable(i32 %16)
  %18 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %24 = load i32, i32* @GENET_POWER_PASSIVE, align 4
  %25 = call i32 @bcmgenet_power_up(%struct.bcmgenet_priv* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %28 = call i32 @bcmgenet_umac_reset(%struct.bcmgenet_priv* %27)
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %30 = call i32 @init_umac(%struct.bcmgenet_priv* %29)
  %31 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %32 = load i32, i32* @UMAC_CMD, align 4
  %33 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CMD_CRC_FWD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bcmgenet_set_hw_addr(%struct.bcmgenet_priv* %43, i32 %46)
  %48 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %49 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %26
  %53 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %54 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %55 = call i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv* %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @EXT_ENERGY_DET_MASK, align 4
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @EXT_EXT_PWR_MGMT, align 4
  %62 = call i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %26
  %64 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %65 = call i64 @bcmgenet_dma_disable(%struct.bcmgenet_priv* %64)
  store i64 %65, i64* %5, align 8
  %66 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %67 = call i32 @bcmgenet_init_dma(%struct.bcmgenet_priv* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %146

73:                                               ; preds = %63
  %74 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @bcmgenet_enable_dma(%struct.bcmgenet_priv* %74, i64 %75)
  %77 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %78 = call i32 @bcmgenet_hfb_init(%struct.bcmgenet_priv* %77)
  %79 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %80 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @bcmgenet_isr0, align 4
  %83 = load i32, i32* @IRQF_SHARED, align 4
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %88 = call i32 @request_irq(i32 %81, i32 %82, i32 %83, i32 %86, %struct.bcmgenet_priv* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %73
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %94 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %141

97:                                               ; preds = %73
  %98 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %99 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @bcmgenet_isr1, align 4
  %102 = load i32, i32* @IRQF_SHARED, align 4
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %107 = call i32 @request_irq(i32 %100, i32 %101, i32 %102, i32 %105, %struct.bcmgenet_priv* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %97
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %113 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %135

116:                                              ; preds = %97
  %117 = load %struct.net_device*, %struct.net_device** %3, align 8
  %118 = call i32 @bcmgenet_mii_probe(%struct.net_device* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %129

124:                                              ; preds = %116
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = call i32 @bcmgenet_netif_start(%struct.net_device* %125)
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = call i32 @netif_tx_start_all_queues(%struct.net_device* %127)
  store i32 0, i32* %2, align 4
  br label %161

129:                                              ; preds = %121
  %130 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %131 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %134 = call i32 @free_irq(i32 %132, %struct.bcmgenet_priv* %133)
  br label %135

135:                                              ; preds = %129, %110
  %136 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %137 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %140 = call i32 @free_irq(i32 %138, %struct.bcmgenet_priv* %139)
  br label %141

141:                                              ; preds = %135, %91
  %142 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %143 = call i32 @bcmgenet_dma_teardown(%struct.bcmgenet_priv* %142)
  %144 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %145 = call i32 @bcmgenet_fini_dma(%struct.bcmgenet_priv* %144)
  br label %146

146:                                              ; preds = %141, %70
  %147 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %148 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %153 = load i32, i32* @GENET_POWER_PASSIVE, align 4
  %154 = call i32 @bcmgenet_power_down(%struct.bcmgenet_priv* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %146
  %156 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %4, align 8
  %157 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @clk_disable_unprepare(i32 %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %124
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.bcmgenet_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @bcmgenet_power_up(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_umac_reset(%struct.bcmgenet_priv*) #1

declare dso_local i32 @init_umac(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_set_hw_addr(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_ext_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_ext_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i64 @bcmgenet_dma_disable(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_init_dma(%struct.bcmgenet_priv*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @bcmgenet_enable_dma(%struct.bcmgenet_priv*, i64) #1

declare dso_local i32 @bcmgenet_hfb_init(%struct.bcmgenet_priv*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_mii_probe(%struct.net_device*) #1

declare dso_local i32 @bcmgenet_netif_start(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_dma_teardown(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_fini_dma(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_power_down(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
