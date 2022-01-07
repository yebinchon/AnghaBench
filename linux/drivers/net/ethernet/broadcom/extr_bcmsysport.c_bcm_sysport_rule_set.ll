; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_rule_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_rule_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32*, i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@RXCHK_BRCM_TAG_CID_MASK = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@RX_CLS_FLOW_WAKE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@RXCHK_BRCM_TAG_MAX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@RXCHK_BRCM_TAG_CID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*, %struct.ethtool_rxnfc*)* @bcm_sysport_rule_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_rule_set(%struct.bcm_sysport_priv* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RXCHK_BRCM_TAG_CID_MASK, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @E2BIG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RX_CLS_FLOW_WAKE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %93

27:                                               ; preds = %17
  %28 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RXCHK_BRCM_TAG_MAX, align 4
  %32 = call i32 @bitmap_weight(i32 %30, i32 %31)
  %33 = load i32, i32* @RXCHK_BRCM_TAG_MAX, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %93

38:                                               ; preds = %27
  %39 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %40 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RXCHK_BRCM_TAG_MAX, align 4
  %43 = call i32 @find_first_zero_bit(i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @RXCHK_BRCM_TAG_MAX, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOSPC, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %93

50:                                               ; preds = %38
  %51 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @RXCHK_BRCM_TAG(i32 %52)
  %54 = call i32 @rxchk_readl(%struct.bcm_sysport_priv* %51, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @RXCHK_BRCM_TAG_CID_MASK, align 4
  %56 = load i32, i32* @RXCHK_BRCM_TAG_CID_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RXCHK_BRCM_TAG_CID_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @RXCHK_BRCM_TAG(i32 %71)
  %73 = call i32 @rxchk_writel(%struct.bcm_sysport_priv* %69, i32 %70, i32 %72)
  %74 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @RXCHK_BRCM_TAG_MASK(i32 %75)
  %77 = call i32 @rxchk_writel(%struct.bcm_sysport_priv* %74, i32 -16711681, i32 %76)
  %78 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %83 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %90 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @set_bit(i32 %88, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %50, %47, %35, %24, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @rxchk_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @RXCHK_BRCM_TAG(i32) #1

declare dso_local i32 @rxchk_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @RXCHK_BRCM_TAG_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
