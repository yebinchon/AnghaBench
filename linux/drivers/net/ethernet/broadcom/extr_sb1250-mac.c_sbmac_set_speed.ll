; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmac_softc = type { i32, i64, i32, i32 }

@sbmac_state_on = common dso_local global i64 0, align 8
@M_MAC_BURST_EN = common dso_local global i32 0, align 4
@M_MAC_SPEED_SEL = common dso_local global i32 0, align 4
@M_MAC_IFG_RX = common dso_local global i32 0, align 4
@M_MAC_IFG_TX = common dso_local global i32 0, align 4
@M_MAC_IFG_THRSH = common dso_local global i32 0, align 4
@M_MAC_SLOT_SIZE = common dso_local global i32 0, align 4
@V_MAC_IFG_RX_10 = common dso_local global i32 0, align 4
@V_MAC_IFG_TX_10 = common dso_local global i32 0, align 4
@K_MAC_IFG_THRSH_10 = common dso_local global i32 0, align 4
@V_MAC_SLOT_SIZE_10 = common dso_local global i32 0, align 4
@V_MAC_SPEED_SEL_10MBPS = common dso_local global i32 0, align 4
@V_MAC_IFG_RX_100 = common dso_local global i32 0, align 4
@V_MAC_IFG_TX_100 = common dso_local global i32 0, align 4
@V_MAC_IFG_THRSH_100 = common dso_local global i32 0, align 4
@V_MAC_SLOT_SIZE_100 = common dso_local global i32 0, align 4
@V_MAC_SPEED_SEL_100MBPS = common dso_local global i32 0, align 4
@V_MAC_IFG_RX_1000 = common dso_local global i32 0, align 4
@V_MAC_IFG_TX_1000 = common dso_local global i32 0, align 4
@V_MAC_IFG_THRSH_1000 = common dso_local global i32 0, align 4
@V_MAC_SLOT_SIZE_1000 = common dso_local global i32 0, align 4
@V_MAC_SPEED_SEL_1000MBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbmac_softc*, i32)* @sbmac_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbmac_set_speed(%struct.sbmac_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbmac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sbmac_softc* %0, %struct.sbmac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %10 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %12 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @sbmac_state_on, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %19 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @__raw_readq(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %23 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__raw_readq(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @M_MAC_BURST_EN, align 4
  %27 = load i32, i32* @M_MAC_SPEED_SEL, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @M_MAC_IFG_RX, align 4
  %33 = load i32, i32* @M_MAC_IFG_TX, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @M_MAC_IFG_THRSH, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @M_MAC_SLOT_SIZE, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %84 [
    i32 130, label %43
    i32 129, label %56
    i32 128, label %69
  ]

43:                                               ; preds = %17
  %44 = load i32, i32* @V_MAC_IFG_RX_10, align 4
  %45 = load i32, i32* @V_MAC_IFG_TX_10, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @K_MAC_IFG_THRSH_10, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @V_MAC_SLOT_SIZE_10, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @V_MAC_SPEED_SEL_10MBPS, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %85

56:                                               ; preds = %17
  %57 = load i32, i32* @V_MAC_IFG_RX_100, align 4
  %58 = load i32, i32* @V_MAC_IFG_TX_100, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @V_MAC_IFG_THRSH_100, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @V_MAC_SLOT_SIZE_100, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @V_MAC_SPEED_SEL_100MBPS, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %85

69:                                               ; preds = %17
  %70 = load i32, i32* @V_MAC_IFG_RX_1000, align 4
  %71 = load i32, i32* @V_MAC_IFG_TX_1000, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @V_MAC_IFG_THRSH_1000, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @V_MAC_SLOT_SIZE_1000, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @V_MAC_SPEED_SEL_1000MBPS, align 4
  %80 = load i32, i32* @M_MAC_BURST_EN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %85

84:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %96

85:                                               ; preds = %69, %56, %43
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %88 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__raw_writeq(i32 %86, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.sbmac_softc*, %struct.sbmac_softc** %4, align 8
  %93 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @__raw_writeq(i32 %91, i32 %94)
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %85, %84, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
