; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_set_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_set_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @dpaa_set_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_set_hash_opts(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RXH_IP_SRC, align 4
  %13 = load i32, i32* @RXH_IP_DST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RXH_L4_B_0_1, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RXH_L4_B_2_3, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %11, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %39 [
    i32 131, label %29
    i32 130, label %29
    i32 129, label %29
    i32 128, label %29
    i32 135, label %29
    i32 134, label %29
    i32 133, label %29
    i32 132, label %29
    i32 141, label %29
    i32 140, label %29
    i32 139, label %29
    i32 138, label %29
    i32 137, label %29
    i32 136, label %29
  ]

29:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @dpaa_set_hash(%struct.net_device* %30, i32 %37)
  store i32 0, i32* %6, align 4
  br label %40

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dpaa_set_hash(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
