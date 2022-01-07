; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_netdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_netdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netsec_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DESC_NUM = common dso_local global i32 0, align 4
@NETSEC_RING_TX = common dso_local global i64 0, align 8
@NETSEC_RING_RX = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netsec_netdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_netdev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netsec_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netsec_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.netsec_priv* %8, %struct.netsec_priv** %4, align 8
  %9 = load i32, i32* @DESC_NUM, align 4
  %10 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32 %9)
  %11 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %12 = load i64, i64* @NETSEC_RING_TX, align 8
  %13 = call i32 @netsec_alloc_dring(%struct.netsec_priv* %11, i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %1
  %19 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %20 = load i64, i64* @NETSEC_RING_RX, align 8
  %21 = call i32 @netsec_alloc_dring(%struct.netsec_priv* %19, i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %69

25:                                               ; preds = %18
  %26 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %27 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %30 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MII_BMCR, align 4
  %33 = call i32 @netsec_phy_read(i32 %28, i32 %31, i32 %32)
  %34 = load i32, i32* @BMCR_PDOWN, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %37 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %40 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MII_BMCR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @netsec_phy_write(i32 %38, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %46 = call i32 @netsec_reset_hardware(%struct.netsec_priv* %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %25
  br label %65

50:                                               ; preds = %25
  %51 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %52 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* @NETSEC_RING_TX, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %59 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @NETSEC_RING_RX, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_init(i32* %63)
  store i32 0, i32* %2, align 4
  br label %74

65:                                               ; preds = %49
  %66 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %67 = load i64, i64* @NETSEC_RING_RX, align 8
  %68 = call i32 @netsec_free_dring(%struct.netsec_priv* %66, i64 %67)
  br label %69

69:                                               ; preds = %65, %24
  %70 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %71 = load i64, i64* @NETSEC_RING_TX, align 8
  %72 = call i32 @netsec_free_dring(%struct.netsec_priv* %70, i64 %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %50, %16
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.netsec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32) #1

declare dso_local i32 @netsec_alloc_dring(%struct.netsec_priv*, i64) #1

declare dso_local i32 @netsec_phy_read(i32, i32, i32) #1

declare dso_local i32 @netsec_phy_write(i32, i32, i32, i32) #1

declare dso_local i32 @netsec_reset_hardware(%struct.netsec_priv*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @netsec_free_dring(%struct.netsec_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
