; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hip04_priv = type { i32, i64 }

@DEF_INT_MASK = common dso_local global i32 0, align 4
@PPE_INTEN = common dso_local global i64 0, align 8
@GE_PORT_EN = common dso_local global i64 0, align 8
@GE_RX_PORT_EN = common dso_local global i32 0, align 4
@GE_TX_PORT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hip04_mac_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_mac_disable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hip04_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hip04_priv* %6, %struct.hip04_priv** %3, align 8
  %7 = load i32, i32* @DEF_INT_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %10 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %14 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %17 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PPE_INTEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 %15, i64 %20)
  %22 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %23 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GE_PORT_EN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @GE_RX_PORT_EN, align 4
  %29 = load i32, i32* @GE_TX_PORT_EN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %36 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GE_PORT_EN, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 %34, i64 %39)
  ret void
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
