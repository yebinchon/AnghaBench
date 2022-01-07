; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ni/extr_nixge.c_nixge_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nixge_priv = type { i32, i32, i32, i32, i32, i32 }
%struct.phy_device = type { i32 }

@nixge_handle_link_change = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nixge_dma_err_handler = common dso_local global i32 0, align 4
@nixge_tx_irq = common dso_local global i32 0, align 4
@nixge_rx_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"request_irq() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nixge_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixge_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nixge_priv*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nixge_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.nixge_priv* %8, %struct.nixge_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @nixge_device_reset(%struct.net_device* %9)
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %13 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %16 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %11, i32 %14, i32* @nixge_handle_link_change, i32 0, i32 %17)
  store %struct.phy_device* %18, %struct.phy_device** %5, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %20 = icmp ne %struct.phy_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %81

24:                                               ; preds = %1
  %25 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %26 = call i32 @phy_start(%struct.phy_device* %25)
  %27 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %28 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %27, i32 0, i32 0
  %29 = load i32, i32* @nixge_dma_err_handler, align 4
  %30 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %31 = ptrtoint %struct.nixge_priv* %30 to i64
  %32 = call i32 @tasklet_init(i32* %28, i32 %29, i64 %31)
  %33 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %34 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %33, i32 0, i32 3
  %35 = call i32 @napi_enable(i32* %34)
  %36 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %37 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @nixge_tx_irq, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @request_irq(i32 %38, i32 %39, i32 0, i32 %42, %struct.net_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  br label %70

48:                                               ; preds = %24
  %49 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %50 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @nixge_rx_irq, align 4
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @request_irq(i32 %51, i32 %52, i32 0, i32 %55, %struct.net_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %64

61:                                               ; preds = %48
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @netif_start_queue(%struct.net_device* %62)
  store i32 0, i32* %2, align 4
  br label %81

64:                                               ; preds = %60
  %65 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %66 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 @free_irq(i32 %67, %struct.net_device* %68)
  br label %70

70:                                               ; preds = %64, %47
  %71 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %72 = call i32 @phy_stop(%struct.phy_device* %71)
  %73 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %74 = call i32 @phy_disconnect(%struct.phy_device* %73)
  %75 = load %struct.nixge_priv*, %struct.nixge_priv** %4, align 8
  %76 = getelementptr inbounds %struct.nixge_priv, %struct.nixge_priv* %75, i32 0, i32 0
  %77 = call i32 @tasklet_kill(i32* %76)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @netdev_err(%struct.net_device* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %70, %61, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.nixge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nixge_device_reset(%struct.net_device*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_stop(%struct.phy_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
