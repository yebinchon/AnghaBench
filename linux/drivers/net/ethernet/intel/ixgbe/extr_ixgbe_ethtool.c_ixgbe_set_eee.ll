; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i64, i64, i64 }
%struct.ixgbe_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IXGBE_FLAG2_EEE_CAPABLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Setting EEE advertised speeds is not supported\0A\00", align 1
@IXGBE_FLAG2_EEE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @ixgbe_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.ethtool_eee, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %6, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 1
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %7, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IXGBE_FLAG2_EEE_CAPABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %124

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.ethtool_eee* %8, i32 0, i32 32)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @ixgbe_get_eee(%struct.net_device* %25, %struct.ethtool_eee* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %124

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %31
  %36 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %77, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @drv, align 4
  %49 = call i32 @e_err(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %124

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @drv, align 4
  %61 = call i32 @e_err(i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %124

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @drv, align 4
  %73 = call i32 @e_err(i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %124

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %35, %31
  %78 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %77
  %85 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load i32, i32* @IXGBE_FLAG2_EEE_ENABLED, align 4
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  br label %112

102:                                              ; preds = %84
  %103 = load i32, i32* @IXGBE_FLAG2_EEE_ENABLED, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %102, %89
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i64 @netif_running(%struct.net_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %118 = call i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter* %117)
  br label %122

119:                                              ; preds = %112
  %120 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %121 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %120)
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %77
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %71, %59, %47, %29, %20
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ethtool_eee*, i32, i32) #1

declare dso_local i32 @ixgbe_get_eee(%struct.net_device*, %struct.ethtool_eee*) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
