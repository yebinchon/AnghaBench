; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mmc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_mmc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MMC_CNTRL_RESET_ON_READ = common dso_local global i32 0, align 4
@MMC_CNTRL_COUNTER_RESET = common dso_local global i32 0, align 4
@MMC_CNTRL_PRESET = common dso_local global i32 0, align 4
@MMC_CNTRL_FULL_HALF_PRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No MAC Management Counters available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_mmc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_mmc_setup(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %4 = load i32, i32* @MMC_CNTRL_RESET_ON_READ, align 4
  %5 = load i32, i32* @MMC_CNTRL_COUNTER_RESET, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @MMC_CNTRL_PRESET, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MMC_CNTRL_FULL_HALF_PRESET, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @stmmac_mmc_intr_all_mask(%struct.stmmac_priv* %11, i32 %14)
  %16 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %17 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @stmmac_mmc_ctrl(%struct.stmmac_priv* %22, i32 %25, i32 %26)
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 1
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netdev_info(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %21
  ret void
}

declare dso_local i32 @stmmac_mmc_intr_all_mask(%struct.stmmac_priv*, i32) #1

declare dso_local i32 @stmmac_mmc_ctrl(%struct.stmmac_priv*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
