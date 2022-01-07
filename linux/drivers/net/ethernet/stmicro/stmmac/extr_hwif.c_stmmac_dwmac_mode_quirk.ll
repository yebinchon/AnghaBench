; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_hwif.c_stmmac_dwmac_mode_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_hwif.c_stmmac_dwmac_mode_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, i64, %struct.mac_device_info* }
%struct.mac_device_info = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"Chain mode enabled\0A\00", align 1
@STMMAC_CHAIN_MODE = common dso_local global i32 0, align 4
@chain_mode_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Ring mode enabled\0A\00", align 1
@STMMAC_RING_MODE = common dso_local global i32 0, align 4
@ring_mode_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*)* @stmmac_dwmac_mode_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_dwmac_mode_quirk(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca %struct.mac_device_info*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %4 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %5 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %4, i32 0, i32 3
  %6 = load %struct.mac_device_info*, %struct.mac_device_info** %5, align 8
  store %struct.mac_device_info* %6, %struct.mac_device_info** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @STMMAC_CHAIN_MODE, align 4
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %20 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %19, i32 0, i32 0
  store i32* @chain_mode_ops, i32** %20, align 8
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %23 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_info(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @STMMAC_RING_MODE, align 4
  %27 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %28 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %30 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %29, i32 0, i32 0
  store i32* @ring_mode_ops, i32** %30, align 8
  br label %31

31:                                               ; preds = %21, %11
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
