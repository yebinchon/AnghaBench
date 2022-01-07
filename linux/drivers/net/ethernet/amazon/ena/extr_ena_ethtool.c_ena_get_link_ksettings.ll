; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ena_adapter = type { %struct.ena_com_dev* }
%struct.ena_com_dev = type { i32 }
%struct.ena_admin_get_feature_link_desc = type { i32, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ena_admin_get_feature_link_desc }

@ENA_ADMIN_GET_FEATURE_LINK_DESC_AUTONEG_MASK = common dso_local global i32 0, align 4
@supported = common dso_local global i32 0, align 4
@Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @ena_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca %struct.ena_com_dev*, align 8
  %8 = alloca %struct.ena_admin_get_feature_link_desc*, align 8
  %9 = alloca %struct.ena_admin_get_feat_resp, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ena_adapter* %12, %struct.ena_adapter** %6, align 8
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %13, i32 0, i32 0
  %15 = load %struct.ena_com_dev*, %struct.ena_com_dev** %14, align 8
  store %struct.ena_com_dev* %15, %struct.ena_com_dev** %7, align 8
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %17 = call i32 @ena_com_get_link_params(%struct.ena_com_dev* %16, %struct.ena_admin_get_feat_resp* %9)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %9, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.ena_admin_get_feature_link_desc* %24, %struct.ena_admin_get_feature_link_desc** %8, align 8
  %25 = load %struct.ena_admin_get_feature_link_desc*, %struct.ena_admin_get_feature_link_desc** %8, align 8
  %26 = getelementptr inbounds %struct.ena_admin_get_feature_link_desc, %struct.ena_admin_get_feature_link_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ena_admin_get_feature_link_desc*, %struct.ena_admin_get_feature_link_desc** %8, align 8
  %32 = getelementptr inbounds %struct.ena_admin_get_feature_link_desc, %struct.ena_admin_get_feature_link_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ENA_ADMIN_GET_FEATURE_LINK_DESC_AUTONEG_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %22
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = load i32, i32* @supported, align 4
  %40 = load i32, i32* @Autoneg, align 4
  %41 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %38, i32 %39, i32 %40)
  %42 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %43 = load i32, i32* @supported, align 4
  %44 = load i32, i32* @Autoneg, align 4
  %45 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %22
  %47 = load %struct.ena_admin_get_feature_link_desc*, %struct.ena_admin_get_feature_link_desc** %8, align 8
  %48 = getelementptr inbounds %struct.ena_admin_get_feature_link_desc, %struct.ena_admin_get_feature_link_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ENA_ADMIN_GET_FEATURE_LINK_DESC_AUTONEG_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @AUTONEG_ENABLE, align 4
  br label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @AUTONEG_DISABLE, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @DUPLEX_FULL, align 4
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %57, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ena_com_get_link_params(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
