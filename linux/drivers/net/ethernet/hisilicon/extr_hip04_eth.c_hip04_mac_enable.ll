; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hip04_priv = type { i32, i64 }

@GE_PORT_EN = common dso_local global i64 0, align 8
@GE_RX_PORT_EN = common dso_local global i32 0, align 4
@GE_TX_PORT_EN = common dso_local global i32 0, align 4
@RCV_INT = common dso_local global i32 0, align 4
@PPE_RINT = common dso_local global i64 0, align 8
@GE_RX_INT_THRESHOLD = common dso_local global i32 0, align 4
@GE_RX_TIMEOUT = common dso_local global i32 0, align 4
@PPE_CFG_RX_PKT_INT = common dso_local global i64 0, align 8
@DEF_INT_MASK = common dso_local global i32 0, align 4
@PPE_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hip04_mac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_mac_enable(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hip04_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.hip04_priv* %6, %struct.hip04_priv** %3, align 8
  %7 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GE_PORT_EN, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @GE_RX_PORT_EN, align 4
  %14 = load i32, i32* @GE_TX_PORT_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %20 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GE_PORT_EN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load i32, i32* @RCV_INT, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %28 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PPE_RINT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 %26, i64 %31)
  %33 = load i32, i32* @GE_RX_INT_THRESHOLD, align 4
  %34 = load i32, i32* @GE_RX_TIMEOUT, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %38 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PPE_CFG_RX_PKT_INT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  %43 = load i32, i32* @DEF_INT_MASK, align 4
  %44 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %45 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %47 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hip04_priv*, %struct.hip04_priv** %3, align 8
  %50 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PPE_INTEN, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel_relaxed(i32 %48, i64 %53)
  ret void
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
