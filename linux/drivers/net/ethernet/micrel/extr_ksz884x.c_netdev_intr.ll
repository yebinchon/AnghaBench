; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dev_priv = type { %struct.ksz_port, %struct.dev_info* }
%struct.ksz_port = type { i32 }
%struct.dev_info = type { i32, i32, i32, %struct.ksz_hw }
%struct.ksz_hw = type { i32, i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@KS884X_INT_TX_MASK = common dso_local global i32 0, align 4
@KS884X_INT_RX = common dso_local global i32 0, align 4
@KS884X_INT_RX_OVERRUN = common dso_local global i32 0, align 4
@KS884X_INT_PHY = common dso_local global i32 0, align 4
@LINK_INT_WORKING = common dso_local global i32 0, align 4
@KS884X_INT_RX_STOPPED = common dso_local global i32 0, align 4
@KS884X_INT_TX_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Tx stopped\0A\00", align 1
@KS_DMA_TX_CTRL = common dso_local global i64 0, align 8
@DMA_TX_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Tx disabled\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @netdev_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.dev_priv*, align 8
  %9 = alloca %struct.dev_info*, align 8
  %10 = alloca %struct.ksz_hw*, align 8
  %11 = alloca %struct.ksz_port*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.dev_priv* %16, %struct.dev_priv** %8, align 8
  %17 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %17, i32 0, i32 1
  %19 = load %struct.dev_info*, %struct.dev_info** %18, align 8
  store %struct.dev_info* %19, %struct.dev_info** %9, align 8
  %20 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %21 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %20, i32 0, i32 3
  store %struct.ksz_hw* %21, %struct.ksz_hw** %10, align 8
  %22 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %23 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %26 = call i32 @hw_read_intr(%struct.ksz_hw* %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %31 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %143

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hw_ack_intr(%struct.ksz_hw* %36, i32 %37)
  %39 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %40 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @KS884X_INT_TX_MASK, align 4
  %46 = and i32 %44, %45
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %51 = load i32, i32* @KS884X_INT_TX_MASK, align 4
  %52 = call i32 @hw_dis_intr_bit(%struct.ksz_hw* %50, i32 %51)
  %53 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %54 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %53, i32 0, i32 2
  %55 = call i32 @tasklet_schedule(i32* %54)
  br label %56

56:                                               ; preds = %49, %35
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @KS884X_INT_RX, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @likely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %64 = load i32, i32* @KS884X_INT_RX, align 4
  %65 = call i32 @hw_dis_intr_bit(%struct.ksz_hw* %63, i32 %64)
  %66 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %67 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %66, i32 0, i32 1
  %68 = call i32 @tasklet_schedule(i32* %67)
  br label %69

69:                                               ; preds = %62, %56
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @KS884X_INT_RX_OVERRUN, align 4
  %72 = and i32 %70, %71
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %82 = call i32 @hw_resume_rx(%struct.ksz_hw* %81)
  br label %83

83:                                               ; preds = %75, %69
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @KS884X_INT_PHY, align 4
  %86 = and i32 %84, %85
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %91 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %90, i32 0, i32 0
  store %struct.ksz_port* %91, %struct.ksz_port** %11, align 8
  %92 = load i32, i32* @LINK_INT_WORKING, align 4
  %93 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %94 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.ksz_port*, %struct.ksz_port** %11, align 8
  %98 = call i32 @port_get_link_speed(%struct.ksz_port* %97)
  br label %99

99:                                               ; preds = %89, %83
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @KS884X_INT_RX_STOPPED, align 4
  %102 = and i32 %100, %101
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %107 = call i32 @handle_rx_stop(%struct.ksz_hw* %106)
  br label %136

108:                                              ; preds = %99
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @KS884X_INT_TX_STOPPED, align 4
  %111 = and i32 %109, %110
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %108
  %115 = load i32, i32* @KS884X_INT_TX_STOPPED, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %118 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %122 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %123 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @KS_DMA_TX_CTRL, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @readl(i64 %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @DMA_TX_ENABLE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %114
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %114
  br label %136

135:                                              ; preds = %108
  br label %136

136:                                              ; preds = %135, %134, %105
  %137 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %138 = call i32 @hw_ena_intr(%struct.ksz_hw* %137)
  %139 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %140 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %136, %29
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hw_read_intr(%struct.ksz_hw*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hw_ack_intr(%struct.ksz_hw*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hw_dis_intr_bit(%struct.ksz_hw*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hw_resume_rx(%struct.ksz_hw*) #1

declare dso_local i32 @port_get_link_speed(%struct.ksz_port*) #1

declare dso_local i32 @handle_rx_stop(%struct.ksz_hw*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @hw_ena_intr(%struct.ksz_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
