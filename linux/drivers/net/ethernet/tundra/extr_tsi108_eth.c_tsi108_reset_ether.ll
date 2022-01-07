; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_reset_ether.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_reset_ether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi108_prv_data = type { i32 }

@TSI108_MAC_CFG1 = common dso_local global i32 0, align 4
@TSI108_MAC_CFG1_SOFTRST = common dso_local global i32 0, align 4
@TSI108_EC_PORTCTRL = common dso_local global i32 0, align 4
@TSI108_EC_PORTCTRL_STATRST = common dso_local global i32 0, align 4
@TSI108_EC_TXCFG = common dso_local global i32 0, align 4
@TSI108_EC_TXCFG_RST = common dso_local global i32 0, align 4
@TSI108_EC_RXCFG = common dso_local global i32 0, align 4
@TSI108_EC_RXCFG_RST = common dso_local global i32 0, align 4
@TSI108_MAC_MII_MGMT_CFG = common dso_local global i32 0, align 4
@TSI108_MAC_MII_MGMT_RST = common dso_local global i32 0, align 4
@TSI108_MAC_MII_MGMT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsi108_prv_data*)* @tsi108_reset_ether to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_reset_ether(%struct.tsi108_prv_data* %0) #0 {
  %2 = alloca %struct.tsi108_prv_data*, align 8
  store %struct.tsi108_prv_data* %0, %struct.tsi108_prv_data** %2, align 8
  %3 = load i32, i32* @TSI108_MAC_CFG1, align 4
  %4 = load i32, i32* @TSI108_MAC_CFG1_SOFTRST, align 4
  %5 = call i32 @TSI_WRITE(i32 %3, i32 %4)
  %6 = call i32 @udelay(i32 100)
  %7 = load i32, i32* @TSI108_MAC_CFG1, align 4
  %8 = call i32 @TSI_WRITE(i32 %7, i32 0)
  %9 = load i32, i32* @TSI108_EC_PORTCTRL, align 4
  %10 = load i32, i32* @TSI108_EC_PORTCTRL_STATRST, align 4
  %11 = call i32 @TSI_WRITE(i32 %9, i32 %10)
  %12 = call i32 @udelay(i32 100)
  %13 = load i32, i32* @TSI108_EC_PORTCTRL, align 4
  %14 = load i32, i32* @TSI108_EC_PORTCTRL, align 4
  %15 = call i32 @TSI_READ(i32 %14)
  %16 = load i32, i32* @TSI108_EC_PORTCTRL_STATRST, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @TSI_WRITE(i32 %13, i32 %18)
  %20 = load i32, i32* @TSI108_EC_TXCFG, align 4
  %21 = load i32, i32* @TSI108_EC_TXCFG_RST, align 4
  %22 = call i32 @TSI_WRITE(i32 %20, i32 %21)
  %23 = call i32 @udelay(i32 100)
  %24 = load i32, i32* @TSI108_EC_TXCFG, align 4
  %25 = load i32, i32* @TSI108_EC_TXCFG, align 4
  %26 = call i32 @TSI_READ(i32 %25)
  %27 = load i32, i32* @TSI108_EC_TXCFG_RST, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @TSI_WRITE(i32 %24, i32 %29)
  %31 = load i32, i32* @TSI108_EC_RXCFG, align 4
  %32 = load i32, i32* @TSI108_EC_RXCFG_RST, align 4
  %33 = call i32 @TSI_WRITE(i32 %31, i32 %32)
  %34 = call i32 @udelay(i32 100)
  %35 = load i32, i32* @TSI108_EC_RXCFG, align 4
  %36 = load i32, i32* @TSI108_EC_RXCFG, align 4
  %37 = call i32 @TSI_READ(i32 %36)
  %38 = load i32, i32* @TSI108_EC_RXCFG_RST, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @TSI_WRITE(i32 %35, i32 %40)
  %42 = load i32, i32* @TSI108_MAC_MII_MGMT_CFG, align 4
  %43 = load i32, i32* @TSI108_MAC_MII_MGMT_CFG, align 4
  %44 = call i32 @TSI_READ(i32 %43)
  %45 = load i32, i32* @TSI108_MAC_MII_MGMT_RST, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @TSI_WRITE(i32 %42, i32 %46)
  %48 = call i32 @udelay(i32 100)
  %49 = load i32, i32* @TSI108_MAC_MII_MGMT_CFG, align 4
  %50 = load i32, i32* @TSI108_MAC_MII_MGMT_CFG, align 4
  %51 = call i32 @TSI_READ(i32 %50)
  %52 = load i32, i32* @TSI108_MAC_MII_MGMT_RST, align 4
  %53 = load i32, i32* @TSI108_MAC_MII_MGMT_CLK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  %57 = or i32 %56, 7
  %58 = call i32 @TSI_WRITE(i32 %49, i32 %57)
  ret void
}

declare dso_local i32 @TSI_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @TSI_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
