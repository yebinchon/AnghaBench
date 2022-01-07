; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.mac_device = type { i32 (%struct.mac_device*)*, i32* }
%struct.dpaa_priv = type { %struct.mac_device* }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mac_dev->stop() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dpaa_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mac_device*, align 8
  %4 = alloca %struct.dpaa_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.dpaa_priv* %9, %struct.dpaa_priv** %4, align 8
  %10 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %11 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %10, i32 0, i32 0
  %12 = load %struct.mac_device*, %struct.mac_device** %11, align 8
  store %struct.mac_device* %12, %struct.mac_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %13)
  %15 = call i32 @usleep_range(i32 5000, i32 10000)
  %16 = load %struct.mac_device*, %struct.mac_device** %3, align 8
  %17 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %16, i32 0, i32 0
  %18 = load i32 (%struct.mac_device*)*, i32 (%struct.mac_device*)** %17, align 8
  %19 = load %struct.mac_device*, %struct.mac_device** %3, align 8
  %20 = call i32 %18(%struct.mac_device* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.dpaa_priv*, %struct.dpaa_priv** %4, align 8
  %25 = load i32, i32* @ifdown, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @netif_err(%struct.dpaa_priv* %24, i32 %25, %struct.net_device* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %1
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mac_device*, %struct.mac_device** %3, align 8
  %33 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.mac_device*, %struct.mac_device** %3, align 8
  %39 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fman_port_disable(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %30

54:                                               ; preds = %30
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @phy_disconnect(i32* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netif_err(%struct.dpaa_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @fman_port_disable(i32) #1

declare dso_local i32 @phy_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
