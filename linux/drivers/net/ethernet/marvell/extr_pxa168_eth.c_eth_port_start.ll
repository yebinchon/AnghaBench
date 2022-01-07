; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_eth_port_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_eth_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pxa168_eth_private = type { i32, i32, i64, i64 }

@ETH_C_TX_DESC_1 = common dso_local global i32 0, align 4
@ETH_C_RX_DESC_0 = common dso_local global i32 0, align 4
@ETH_F_RX_DESC_0 = common dso_local global i32 0, align 4
@INT_CAUSE = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@ALL_INTS = common dso_local global i32 0, align 4
@PORT_CONFIG = common dso_local global i32 0, align 4
@PCR_EN = common dso_local global i32 0, align 4
@SDMA_CMD = common dso_local global i32 0, align 4
@SDMA_CMD_ERD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @eth_port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eth_port_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa168_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.pxa168_eth_private* %8, %struct.pxa168_eth_private** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @phy_start(i32 %11)
  %13 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %14 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %17 = load i32, i32* @ETH_C_TX_DESC_1, align 4
  %18 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %19 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %20, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @wrl(%struct.pxa168_eth_private* %16, i32 %17, i32 %25)
  %27 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %28 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %31 = load i32, i32* @ETH_C_RX_DESC_0, align 4
  %32 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %33 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %34, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @wrl(%struct.pxa168_eth_private* %30, i32 %31, i32 %39)
  %41 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %42 = load i32, i32* @ETH_F_RX_DESC_0, align 4
  %43 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %44 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = add i64 %45, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @wrl(%struct.pxa168_eth_private* %41, i32 %42, i32 %50)
  %52 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %53 = load i32, i32* @INT_CAUSE, align 4
  %54 = call i32 @wrl(%struct.pxa168_eth_private* %52, i32 %53, i32 0)
  %55 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %56 = load i32, i32* @INT_MASK, align 4
  %57 = load i32, i32* @ALL_INTS, align 4
  %58 = call i32 @wrl(%struct.pxa168_eth_private* %55, i32 %56, i32 %57)
  %59 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %60 = load i32, i32* @PORT_CONFIG, align 4
  %61 = call i32 @rdl(%struct.pxa168_eth_private* %59, i32 %60)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @PCR_EN, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %66 = load i32, i32* @PORT_CONFIG, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @wrl(%struct.pxa168_eth_private* %65, i32 %66, i32 %67)
  %69 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %70 = load i32, i32* @SDMA_CMD, align 4
  %71 = call i32 @rdl(%struct.pxa168_eth_private* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @SDMA_CMD_ERD, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %4, align 8
  %76 = load i32, i32* @SDMA_CMD, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @wrl(%struct.pxa168_eth_private* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

declare dso_local i32 @rdl(%struct.pxa168_eth_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
