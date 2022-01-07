; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hix5hd2_priv = type { i32, i32, i32, i32, i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to enable mac core clk %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to enable mac ifc clk %d\0A\00", align 1
@hix5hd2_adjust_link = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hix5hd2_net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hix5hd2_priv*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hix5hd2_priv* %8, %struct.hix5hd2_priv** %4, align 8
  %9 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %10 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %22 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %29 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %76

36:                                               ; preds = %20
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %39 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %42 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %37, i32 %40, i32* @hix5hd2_adjust_link, i32 0, i32 %43)
  store %struct.phy_device* %44, %struct.phy_device** %5, align 8
  %45 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %46 = icmp ne %struct.phy_device* %45, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %36
  %48 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %49 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clk_disable_unprepare(i32 %50)
  %52 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %53 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %76

58:                                               ; preds = %36
  %59 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %60 = call i32 @phy_start(%struct.phy_device* %59)
  %61 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %62 = call i32 @hix5hd2_hw_init(%struct.hix5hd2_priv* %61)
  %63 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %64 = call i32 @hix5hd2_rx_refill(%struct.hix5hd2_priv* %63)
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @netdev_reset_queue(%struct.net_device* %65)
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = call i32 @netif_start_queue(%struct.net_device* %67)
  %69 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %70 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %69, i32 0, i32 0
  %71 = call i32 @napi_enable(i32* %70)
  %72 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %73 = call i32 @hix5hd2_port_enable(%struct.hix5hd2_priv* %72)
  %74 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %75 = call i32 @hix5hd2_irq_enable(%struct.hix5hd2_priv* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %58, %47, %27, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i32 @hix5hd2_hw_init(%struct.hix5hd2_priv*) #1

declare dso_local i32 @hix5hd2_rx_refill(%struct.hix5hd2_priv*) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @hix5hd2_port_enable(%struct.hix5hd2_priv*) #1

declare dso_local i32 @hix5hd2_irq_enable(%struct.hix5hd2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
