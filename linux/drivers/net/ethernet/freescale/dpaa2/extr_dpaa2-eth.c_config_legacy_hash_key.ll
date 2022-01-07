; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_config_legacy_hash_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_config_legacy_hash_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpni_rx_tc_dist_cfg = type { i32, i32, i32 }

@DPNI_DIST_MODE_HASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dpni_set_rx_tc_dist failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, i32)* @config_legacy_hash_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_legacy_hash_key(%struct.dpaa2_eth_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dpni_rx_tc_dist_cfg, align 4
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = call i32 @memset(%struct.dpni_rx_tc_dist_cfg* %6, i32 0, i32 12)
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %18 = call i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %17)
  %19 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @DPNI_DIST_MODE_HASH, align 4
  %21 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %26 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dpni_set_rx_tc_dist(i32 %24, i32 0, i32 %27, i32 0, %struct.dpni_rx_tc_dist_cfg* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.dpni_rx_tc_dist_cfg*, i32, i32) #1

declare dso_local i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpni_set_rx_tc_dist(i32, i32, i32, i32, %struct.dpni_rx_tc_dist_cfg*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
