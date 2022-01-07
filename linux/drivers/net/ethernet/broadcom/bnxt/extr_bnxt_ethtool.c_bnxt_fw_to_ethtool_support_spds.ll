; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_fw_to_ethtool_support_spds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_fw_to_ethtool_support_spds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_link_info = type { i64, i32 }
%struct.ethtool_link_ksettings = type { i32 }

@supported = common dso_local global i32 0, align 4
@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_link_info*, %struct.ethtool_link_ksettings*)* @bnxt_fw_to_ethtool_support_spds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fw_to_ethtool_support_spds(%struct.bnxt_link_info* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.bnxt_link_info*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt_link_info* %0, %struct.bnxt_link_info** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %6 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %11 = load i32, i32* @supported, align 4
  %12 = call i32 @BNXT_FW_TO_ETHTOOL_SPDS(i32 %9, i32 0, %struct.ethtool_link_ksettings* %10, i32 %11)
  %13 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %14 = load i32, i32* @supported, align 4
  %15 = load i32, i32* @Pause, align 4
  %16 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %13, i32 %14, i32 %15)
  %17 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %18 = load i32, i32* @supported, align 4
  %19 = load i32, i32* @Asym_Pause, align 4
  %20 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %17, i32 %18, i32 %19)
  %21 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %27 = load i32, i32* @supported, align 4
  %28 = load i32, i32* @Autoneg, align 4
  %29 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @BNXT_FW_TO_ETHTOOL_SPDS(i32, i32, %struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
