; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_get_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_ethtool.c_sxgbe_get_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_priv_data = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sxgbe_priv_data*, %struct.ethtool_rxnfc*)* @sxgbe_get_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxgbe_get_rss_hash_opts(%struct.sxgbe_priv_data* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sxgbe_priv_data*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  store %struct.sxgbe_priv_data* %0, %struct.sxgbe_priv_data** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %6 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %7 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %43 [
    i32 131, label %11
    i32 129, label %11
    i32 133, label %19
    i32 141, label %19
    i32 139, label %19
    i32 137, label %19
    i32 135, label %19
    i32 130, label %27
    i32 128, label %27
    i32 132, label %35
    i32 140, label %35
    i32 138, label %35
    i32 136, label %35
    i32 134, label %35
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @RXH_L4_B_0_1, align 4
  %13 = load i32, i32* @RXH_L4_B_2_3, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %2, %2, %2, %2, %2, %11
  %20 = load i32, i32* @RXH_IP_SRC, align 4
  %21 = load i32, i32* @RXH_IP_DST, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %46

27:                                               ; preds = %2, %2
  %28 = load i32, i32* @RXH_L4_B_0_1, align 4
  %29 = load i32, i32* @RXH_L4_B_2_3, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %2, %2, %2, %2, %2, %27
  %36 = load i32, i32* @RXH_IP_SRC, align 4
  %37 = load i32, i32* @RXH_IP_DST, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %35, %19
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
