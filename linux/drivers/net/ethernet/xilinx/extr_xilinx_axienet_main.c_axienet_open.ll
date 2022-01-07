; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.axienet_local = type { i64, i64, i64, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"axienet_open()\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"phylink_of_phy_connect() failed: %d\0A\00", align 1
@axienet_dma_err_handler = common dso_local global i32 0, align 4
@axienet_tx_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@axienet_rx_irq = common dso_local global i32 0, align 4
@axienet_eth_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"request_irq() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @axienet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axienet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axienet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %6)
  store %struct.axienet_local* %7, %struct.axienet_local** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %12 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %11, i32 0, i32 6
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %17 = call i32 @axienet_mdio_disable(%struct.axienet_local* %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @axienet_device_reset(%struct.net_device* %18)
  %20 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %21 = call i32 @axienet_mdio_enable(%struct.axienet_local* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %23 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %22, i32 0, i32 6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %138

31:                                               ; preds = %1
  %32 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %33 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %36 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @phylink_of_phy_connect(i32 %34, i32 %39, i32 0)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %45 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %138

50:                                               ; preds = %31
  %51 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %52 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @phylink_start(i32 %53)
  %55 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %56 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %55, i32 0, i32 4
  %57 = load i32, i32* @axienet_dma_err_handler, align 4
  %58 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %59 = ptrtoint %struct.axienet_local* %58 to i64
  %60 = call i32 @tasklet_init(i32* %56, i32 %57, i64 %59)
  %61 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %62 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @axienet_tx_irq, align 4
  %65 = load i32, i32* @IRQF_SHARED, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @request_irq(i64 %63, i32 %64, i32 %65, i32 %68, %struct.net_device* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %121

74:                                               ; preds = %50
  %75 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %76 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @axienet_rx_irq, align 4
  %79 = load i32, i32* @IRQF_SHARED, align 4
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = call i32 @request_irq(i64 %77, i32 %78, i32 %79, i32 %82, %struct.net_device* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %115

88:                                               ; preds = %74
  %89 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %90 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %95 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @axienet_eth_irq, align 4
  %98 = load i32, i32* @IRQF_SHARED, align 4
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i32 @request_irq(i64 %96, i32 %97, i32 %98, i32 %101, %struct.net_device* %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %109

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107, %88
  store i32 0, i32* %2, align 4
  br label %138

109:                                              ; preds = %106
  %110 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %111 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = call i32 @free_irq(i64 %112, %struct.net_device* %113)
  br label %115

115:                                              ; preds = %109, %87
  %116 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %117 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @free_irq(i64 %118, %struct.net_device* %119)
  br label %121

121:                                              ; preds = %115, %73
  %122 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %123 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @phylink_stop(i32 %124)
  %126 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %127 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @phylink_disconnect_phy(i32 %128)
  %130 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %131 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %130, i32 0, i32 4
  %132 = call i32 @tasklet_kill(i32* %131)
  %133 = load %struct.axienet_local*, %struct.axienet_local** %5, align 8
  %134 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %133, i32 0, i32 3
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %121, %108, %43, %29
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @axienet_mdio_disable(%struct.axienet_local*) #1

declare dso_local i32 @axienet_device_reset(%struct.net_device*) #1

declare dso_local i32 @axienet_mdio_enable(%struct.axienet_local*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phylink_of_phy_connect(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @phylink_start(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @phylink_stop(i32) #1

declare dso_local i32 @phylink_disconnect_phy(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
