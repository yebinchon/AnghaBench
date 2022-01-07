; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_rule_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_rule_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@RX_CLS_FLOW_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sysport_priv*, %struct.ethtool_rxnfc*)* @bcm_sysport_rule_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sysport_rule_get(%struct.bcm_sysport_priv* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_sysport_priv*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %7 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %4, align 8
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bcm_sysport_rule_find(%struct.bcm_sysport_priv* %7, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @RX_CLS_FLOW_WAKE, align 4
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @bcm_sysport_rule_find(%struct.bcm_sysport_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
