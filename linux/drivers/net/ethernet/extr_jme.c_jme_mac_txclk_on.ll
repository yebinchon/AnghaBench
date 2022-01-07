; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_mac_txclk_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_mac_txclk_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i64 }

@GHC_SPEED = common dso_local global i64 0, align 8
@GHC_SPEED_1000M = common dso_local global i64 0, align 8
@GHC_TO_CLK_GPHY = common dso_local global i32 0, align 4
@GHC_TXMAC_CLK_GPHY = common dso_local global i32 0, align 4
@GHC_TO_CLK_PCIE = common dso_local global i32 0, align 4
@GHC_TXMAC_CLK_PCIE = common dso_local global i32 0, align 4
@JME_GHC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_mac_txclk_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_mac_txclk_on(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @GHC_SPEED, align 8
  %8 = and i64 %6, %7
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @GHC_SPEED_1000M, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @GHC_TO_CLK_GPHY, align 4
  %14 = load i32, i32* @GHC_TXMAC_CLK_GPHY, align 4
  %15 = or i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = or i64 %19, %16
  store i64 %20, i64* %18, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @GHC_TO_CLK_PCIE, align 4
  %23 = load i32, i32* @GHC_TXMAC_CLK_PCIE, align 4
  %24 = or i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %28, %25
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %21, %12
  %31 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %32 = load i32, i32* @JME_GHC, align 4
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @jwrite32f(%struct.jme_adapter* %31, i32 %32, i32 %36)
  ret void
}

declare dso_local i32 @jwrite32f(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
