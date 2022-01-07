; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dpaa_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)*, i32, i32 (i32, i32)*, i32 (%struct.net_device*, %struct.TYPE_2__*)*, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mac_dev->set_promisc() = %d\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"mac_dev->set_allmulti() = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"mac_dev->set_multi() = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dpaa_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpaa_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dpaa_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.dpaa_priv* %6, %struct.dpaa_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %17 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %1
  %23 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %24 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %32 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %36 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %41 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %46 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %39(i32 %44, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %22
  %54 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %55 = load i32, i32* @drv, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @netif_err(%struct.dpaa_priv* %54, i32 %55, %struct.net_device* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %22
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFF_ALLMULTI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %71 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %69, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %60
  %77 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %78 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %86 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %84, i32* %88, align 8
  %89 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %90 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %95 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %100 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 %93(i32 %98, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %76
  %108 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %109 = load i32, i32* @drv, align 4
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @netif_err(%struct.dpaa_priv* %108, i32 %109, %struct.net_device* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %107, %76
  br label %114

114:                                              ; preds = %113, %60
  %115 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %116 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %115, i32 0, i32 0
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32 (%struct.net_device*, %struct.TYPE_2__*)*, i32 (%struct.net_device*, %struct.TYPE_2__*)** %118, align 8
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %122 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = call i32 %119(%struct.net_device* %120, %struct.TYPE_2__* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %114
  %128 = load %struct.dpaa_priv*, %struct.dpaa_priv** %3, align 8
  %129 = load i32, i32* @drv, align 4
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @netif_err(%struct.dpaa_priv* %128, i32 %129, %struct.net_device* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %127, %114
  ret void
}

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.dpaa_priv*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
