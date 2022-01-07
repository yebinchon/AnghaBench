; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.ixgbe_fc_info, %struct.TYPE_2__ }
%struct.ixgbe_fc_info = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ixgbe_fc_full = common dso_local global i32 0, align 4
@ixgbe_fc_rx_pause = common dso_local global i32 0, align 4
@ixgbe_fc_tx_pause = common dso_local global i32 0, align 4
@ixgbe_fc_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @ixgbe_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.ixgbe_fc_info, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %6, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 1
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %7, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = bitcast %struct.ixgbe_fc_info* %8 to i8*
  %16 = bitcast %struct.ixgbe_fc_info* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %123

33:                                               ; preds = %23, %2
  %34 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AUTONEG_ENABLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %41 = call i32 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %123

46:                                               ; preds = %39, %33
  %47 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AUTONEG_ENABLE, align 8
  %51 = icmp ne i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.ixgbe_fc_info, %struct.ixgbe_fc_info* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %46
  %59 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58, %46
  %64 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @ixgbe_fc_full, align 4
  %70 = getelementptr inbounds %struct.ixgbe_fc_info, %struct.ixgbe_fc_info* %8, i32 0, i32 1
  store i32 %69, i32* %70, align 4
  br label %102

71:                                               ; preds = %63
  %72 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @ixgbe_fc_rx_pause, align 4
  %83 = getelementptr inbounds %struct.ixgbe_fc_info, %struct.ixgbe_fc_info* %8, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %101

84:                                               ; preds = %76, %71
  %85 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %84
  %90 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @ixgbe_fc_tx_pause, align 4
  %96 = getelementptr inbounds %struct.ixgbe_fc_info, %struct.ixgbe_fc_info* %8, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  br label %100

97:                                               ; preds = %89, %84
  %98 = load i32, i32* @ixgbe_fc_none, align 4
  %99 = getelementptr inbounds %struct.ixgbe_fc_info, %struct.ixgbe_fc_info* %8, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %101, %68
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = call i64 @memcmp(%struct.ixgbe_fc_info* %8, %struct.ixgbe_fc_info* %104, i32 8)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 0
  %110 = bitcast %struct.ixgbe_fc_info* %109 to i8*
  %111 = bitcast %struct.ixgbe_fc_info* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 4 %111, i64 8, i1 false)
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = call i64 @netif_running(%struct.net_device* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %117 = call i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter* %116)
  br label %121

118:                                              ; preds = %107
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %120 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %102
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %43, %30
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw*) #1

declare dso_local i64 @memcmp(%struct.ixgbe_fc_info*, %struct.ixgbe_fc_info*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
