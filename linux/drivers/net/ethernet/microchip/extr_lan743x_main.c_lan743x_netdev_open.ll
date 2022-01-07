; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lan743x_adapter = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i64 }

@LAN743X_USED_RX_CHANNELS = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error opening LAN743x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lan743x_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.lan743x_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.lan743x_adapter* %8, %struct.lan743x_adapter** %4, align 8
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %10 = call i32 @lan743x_intr_open(%struct.lan743x_adapter* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %103

14:                                               ; preds = %1
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %16 = call i32 @lan743x_mac_open(%struct.lan743x_adapter* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %100

20:                                               ; preds = %14
  %21 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %22 = call i32 @lan743x_phy_open(%struct.lan743x_adapter* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %97

26:                                               ; preds = %20
  %27 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %28 = call i32 @lan743x_ptp_open(%struct.lan743x_adapter* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %94

32:                                               ; preds = %26
  %33 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %34 = call i32 @lan743x_rfe_open(%struct.lan743x_adapter* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %51, %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = call i32 @lan743x_rx_open(%struct.TYPE_3__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %64

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %35

54:                                               ; preds = %35
  %55 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @lan743x_tx_open(i32* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %111

64:                                               ; preds = %62, %49
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %69
  %80 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %81 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = call i32 @lan743x_rx_close(%struct.TYPE_3__* %85)
  br label %87

87:                                               ; preds = %79, %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %93 = call i32 @lan743x_ptp_close(%struct.lan743x_adapter* %92)
  br label %94

94:                                               ; preds = %91, %31
  %95 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %96 = call i32 @lan743x_phy_close(%struct.lan743x_adapter* %95)
  br label %97

97:                                               ; preds = %94, %25
  %98 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %99 = call i32 @lan743x_mac_close(%struct.lan743x_adapter* %98)
  br label %100

100:                                              ; preds = %97, %19
  %101 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %102 = call i32 @lan743x_intr_close(%struct.lan743x_adapter* %101)
  br label %103

103:                                              ; preds = %100, %13
  %104 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %105 = load i32, i32* @ifup, align 4
  %106 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @netif_warn(%struct.lan743x_adapter* %104, i32 %105, i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %103, %63
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan743x_intr_open(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_mac_open(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_phy_open(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_ptp_open(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_rfe_open(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_rx_open(%struct.TYPE_3__*) #1

declare dso_local i32 @lan743x_tx_open(i32*) #1

declare dso_local i32 @lan743x_rx_close(%struct.TYPE_3__*) #1

declare dso_local i32 @lan743x_ptp_close(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_phy_close(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_mac_close(%struct.lan743x_adapter*) #1

declare dso_local i32 @lan743x_intr_close(%struct.lan743x_adapter*) #1

declare dso_local i32 @netif_warn(%struct.lan743x_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
