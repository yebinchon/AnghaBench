; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_ethtool_add_mac_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_ethtool_add_mac_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rxnfc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.list_head = type { i32 }
%struct.mlx4_spec_list = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@MLX4_MAC_MASK = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_ETH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rxnfc*, %struct.list_head*, %struct.mlx4_spec_list*, i8*)* @mlx4_en_ethtool_add_mac_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_ethtool_add_mac_rule(%struct.ethtool_rxnfc* %0, %struct.list_head* %1, %struct.mlx4_spec_list* %2, i8* %3) #0 {
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.mlx4_spec_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.ethtool_rxnfc* %0, %struct.ethtool_rxnfc** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store %struct.mlx4_spec_list* %2, %struct.mlx4_spec_list** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @MLX4_MAC_MASK, align 4
  %12 = shl i32 %11, 16
  %13 = call zeroext i8 @cpu_to_be64(i32 %12)
  store i8 %13, i8* %10, align 1
  %14 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_ETH, align 4
  %15 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %7, align 8
  %18 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @memcpy(i32 %20, i8* %10, i32 %21)
  %23 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i32 %26, i8* %27, i32 %28)
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FLOW_EXT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %4
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VLAN_VID_MASK, align 4
  %44 = call i32 @cpu_to_be16(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %37
  %48 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @VLAN_VID_MASK, align 4
  %57 = call i32 @cpu_to_be16(i32 %56)
  %58 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %7, align 8
  %59 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %47, %37, %4
  %62 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %62, i32 0, i32 0
  %64 = load %struct.list_head*, %struct.list_head** %6, align 8
  %65 = call i32 @list_add_tail(i32* %63, %struct.list_head* %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local zeroext i8 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
