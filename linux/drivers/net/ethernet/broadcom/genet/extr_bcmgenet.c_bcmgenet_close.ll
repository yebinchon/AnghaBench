; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcmgenet_priv = type { i32, i64, i32, i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bcmgenet_close\0A\00", align 1
@GENET_POWER_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcmgenet_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.bcmgenet_priv* %6, %struct.bcmgenet_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %8 = load i32, i32* @ifdown, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_dbg(%struct.bcmgenet_priv* %7, i32 %8, %struct.net_device* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @bcmgenet_netif_stop(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_disconnect(i32 %15)
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %18 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.bcmgenet_priv* %20)
  %22 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %23 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.bcmgenet_priv* %25)
  %27 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %28 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %33 = load i32, i32* @GENET_POWER_PASSIVE, align 4
  %34 = call i32 @bcmgenet_power_down(%struct.bcmgenet_priv* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %37 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_disable_unprepare(i32 %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.bcmgenet_priv*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @bcmgenet_netif_stop(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @free_irq(i32, %struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_power_down(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
