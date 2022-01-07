; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_fw_to_ethtool_advertised_spds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_fw_to_ethtool_advertised_spds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_link_info = type { i32, i32, i32 }
%struct.ethtool_link_ksettings = type { i32 }

@BNXT_AUTONEG_FLOW_CTRL = common dso_local global i32 0, align 4
@advertising = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_link_info*, %struct.ethtool_link_ksettings*)* @bnxt_fw_to_ethtool_advertised_spds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fw_to_ethtool_advertised_spds(%struct.bnxt_link_info* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.bnxt_link_info*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnxt_link_info* %0, %struct.bnxt_link_info** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNXT_AUTONEG_FLOW_CTRL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %24 = load i32, i32* @advertising, align 4
  %25 = call i32 @BNXT_FW_TO_ETHTOOL_SPDS(i32 %21, i32 %22, %struct.ethtool_link_ksettings* %23, i32 %24)
  ret void
}

declare dso_local i32 @BNXT_FW_TO_ETHTOOL_SPDS(i32, i32, %struct.ethtool_link_ksettings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
