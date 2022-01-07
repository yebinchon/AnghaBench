; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_promiscuous_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_sb1250-mac.c_sbmac_promiscuous_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmac_softc = type { i64, i32 }

@sbmac_state_on = common dso_local global i64 0, align 8
@M_MAC_ALLPKT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbmac_softc*, i32)* @sbmac_promiscuous_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbmac_promiscuous_mode(%struct.sbmac_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sbmac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sbmac_softc* %0, %struct.sbmac_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @sbmac_state_on, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @__raw_readq(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @M_MAC_ALLPKT_EN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %25 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @__raw_writeq(i32 %23, i32 %26)
  br label %42

28:                                               ; preds = %12
  %29 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %30 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @__raw_readq(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @M_MAC_ALLPKT_EN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sbmac_softc*, %struct.sbmac_softc** %3, align 8
  %39 = getelementptr inbounds %struct.sbmac_softc, %struct.sbmac_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @__raw_writeq(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %11, %28, %15
  ret void
}

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
