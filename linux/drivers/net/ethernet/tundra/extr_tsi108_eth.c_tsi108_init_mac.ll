; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_init_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32 }

@TSI108_MAC_CFG2 = common dso_local global i32 0, align 4
@TSI108_MAC_CFG2_DFLT_PREAMBLE = common dso_local global i32 0, align 4
@TSI108_MAC_CFG2_PADCRC = common dso_local global i32 0, align 4
@TSI108_EC_TXTHRESH = common dso_local global i32 0, align 4
@TSI108_EC_TXTHRESH_STARTFILL = common dso_local global i32 0, align 4
@TSI108_EC_TXTHRESH_STOPFILL = common dso_local global i32 0, align 4
@TSI108_STAT_CARRYMASK1 = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXBYTES = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXPKTS = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXFCS = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXMCAST = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXALIGN = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXLENGTH = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXRUNT = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXJUMBO = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXFRAG = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXJABBER = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY1_RXDROP = common dso_local global i32 0, align 4
@TSI108_STAT_CARRYMASK2 = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXBYTES = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXPKTS = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXEXDEF = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXEXCOL = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXTCOL = common dso_local global i32 0, align 4
@TSI108_STAT_CARRY2_TXPAUSE = common dso_local global i32 0, align 4
@TSI108_EC_PORTCTRL = common dso_local global i32 0, align 4
@TSI108_EC_PORTCTRL_STATEN = common dso_local global i32 0, align 4
@TSI108_MAC_CFG1 = common dso_local global i32 0, align 4
@TSI108_EC_RXCFG = common dso_local global i32 0, align 4
@TSI108_EC_RXCFG_SE = common dso_local global i32 0, align 4
@TSI108_EC_RXCFG_BFE = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_CFG = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_CFG_DESC_INT = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_CFG_EOQ_OWN_INT = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_CFG_WSWP = common dso_local global i32 0, align 4
@TSI108_PBM_PORT = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_CFG_SFNPORT = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_CFG = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_CFG_DESC_INT = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_CFG_EOQ_OWN_INT = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_CFG_WSWP = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_CFG_SFNPORT = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_BUFCFG = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_BUFCFG_BURST256 = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_BUFCFG_BSWP = common dso_local global i32 0, align 4
@TSI108_EC_TXQ_BUFCFG_SFNPORT = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_BUFCFG = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_BUFCFG_BURST256 = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_BUFCFG_BSWP = common dso_local global i32 0, align 4
@TSI108_EC_RXQ_BUFCFG_SFNPORT = common dso_local global i32 0, align 4
@TSI108_EC_INTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tsi108_init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi108_init_mac(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tsi108_prv_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %4)
  store %struct.tsi108_prv_data* %5, %struct.tsi108_prv_data** %3, align 8
  %6 = load i32, i32* @TSI108_MAC_CFG2, align 4
  %7 = load i32, i32* @TSI108_MAC_CFG2_DFLT_PREAMBLE, align 4
  %8 = load i32, i32* @TSI108_MAC_CFG2_PADCRC, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @TSI_WRITE(i32 %6, i32 %9)
  %11 = load i32, i32* @TSI108_EC_TXTHRESH, align 4
  %12 = load i32, i32* @TSI108_EC_TXTHRESH_STARTFILL, align 4
  %13 = shl i32 192, %12
  %14 = load i32, i32* @TSI108_EC_TXTHRESH_STOPFILL, align 4
  %15 = shl i32 192, %14
  %16 = or i32 %13, %15
  %17 = call i32 @TSI_WRITE(i32 %11, i32 %16)
  %18 = load i32, i32* @TSI108_STAT_CARRYMASK1, align 4
  %19 = load i32, i32* @TSI108_STAT_CARRY1_RXBYTES, align 4
  %20 = load i32, i32* @TSI108_STAT_CARRY1_RXPKTS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TSI108_STAT_CARRY1_RXFCS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TSI108_STAT_CARRY1_RXMCAST, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TSI108_STAT_CARRY1_RXALIGN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TSI108_STAT_CARRY1_RXLENGTH, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TSI108_STAT_CARRY1_RXRUNT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TSI108_STAT_CARRY1_RXJUMBO, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @TSI108_STAT_CARRY1_RXFRAG, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TSI108_STAT_CARRY1_RXJABBER, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @TSI108_STAT_CARRY1_RXDROP, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = call i32 @TSI_WRITE(i32 %18, i32 %40)
  %42 = load i32, i32* @TSI108_STAT_CARRYMASK2, align 4
  %43 = load i32, i32* @TSI108_STAT_CARRY2_TXBYTES, align 4
  %44 = load i32, i32* @TSI108_STAT_CARRY2_TXPKTS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @TSI108_STAT_CARRY2_TXEXDEF, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @TSI108_STAT_CARRY2_TXEXCOL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TSI108_STAT_CARRY2_TXTCOL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @TSI108_STAT_CARRY2_TXPAUSE, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = call i32 @TSI_WRITE(i32 %42, i32 %54)
  %56 = load i32, i32* @TSI108_EC_PORTCTRL, align 4
  %57 = load i32, i32* @TSI108_EC_PORTCTRL_STATEN, align 4
  %58 = call i32 @TSI_WRITE(i32 %56, i32 %57)
  %59 = load i32, i32* @TSI108_MAC_CFG1, align 4
  %60 = call i32 @TSI_WRITE(i32 %59, i32 0)
  %61 = load i32, i32* @TSI108_EC_RXCFG, align 4
  %62 = load i32, i32* @TSI108_EC_RXCFG_SE, align 4
  %63 = load i32, i32* @TSI108_EC_RXCFG_BFE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @TSI_WRITE(i32 %61, i32 %64)
  %66 = load i32, i32* @TSI108_EC_TXQ_CFG, align 4
  %67 = load i32, i32* @TSI108_EC_TXQ_CFG_DESC_INT, align 4
  %68 = load i32, i32* @TSI108_EC_TXQ_CFG_EOQ_OWN_INT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @TSI108_EC_TXQ_CFG_WSWP, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @TSI108_PBM_PORT, align 4
  %73 = load i32, i32* @TSI108_EC_TXQ_CFG_SFNPORT, align 4
  %74 = shl i32 %72, %73
  %75 = or i32 %71, %74
  %76 = call i32 @TSI_WRITE(i32 %66, i32 %75)
  %77 = load i32, i32* @TSI108_EC_RXQ_CFG, align 4
  %78 = load i32, i32* @TSI108_EC_RXQ_CFG_DESC_INT, align 4
  %79 = load i32, i32* @TSI108_EC_RXQ_CFG_EOQ_OWN_INT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @TSI108_EC_RXQ_CFG_WSWP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @TSI108_PBM_PORT, align 4
  %84 = load i32, i32* @TSI108_EC_RXQ_CFG_SFNPORT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = call i32 @TSI_WRITE(i32 %77, i32 %86)
  %88 = load i32, i32* @TSI108_EC_TXQ_BUFCFG, align 4
  %89 = load i32, i32* @TSI108_EC_TXQ_BUFCFG_BURST256, align 4
  %90 = load i32, i32* @TSI108_EC_TXQ_BUFCFG_BSWP, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @TSI108_PBM_PORT, align 4
  %93 = load i32, i32* @TSI108_EC_TXQ_BUFCFG_SFNPORT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %91, %94
  %96 = call i32 @TSI_WRITE(i32 %88, i32 %95)
  %97 = load i32, i32* @TSI108_EC_RXQ_BUFCFG, align 4
  %98 = load i32, i32* @TSI108_EC_RXQ_BUFCFG_BURST256, align 4
  %99 = load i32, i32* @TSI108_EC_RXQ_BUFCFG_BSWP, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @TSI108_PBM_PORT, align 4
  %102 = load i32, i32* @TSI108_EC_RXQ_BUFCFG_SFNPORT, align 4
  %103 = shl i32 %101, %102
  %104 = or i32 %100, %103
  %105 = call i32 @TSI_WRITE(i32 %97, i32 %104)
  %106 = load i32, i32* @TSI108_EC_INTMASK, align 4
  %107 = call i32 @TSI_WRITE(i32 %106, i32 -1)
  ret void
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TSI_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
