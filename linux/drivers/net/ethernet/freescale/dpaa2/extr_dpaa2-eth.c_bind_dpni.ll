; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_bind_dpni.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_bind_dpni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.net_device* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpni_pools_cfg = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.dpni_error_cfg = type { i32, i32, i32 }

@DPAA2_ETH_RX_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dpni_set_pools() failed\0A\00", align 1
@DPAA2_RXH_DEFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to configure hashing\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to configure Rx classification key\0A\00", align 1
@DPAA2_FAS_RX_ERR_MASK = common dso_local global i32 0, align 4
@DPNI_ERROR_ACTION_DISCARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"dpni_set_errors_behavior failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid FQ type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DPNI_QUEUE_TX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"dpni_get_qdid() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*)* @bind_dpni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_dpni(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dpni_pools_cfg, align 8
  %7 = alloca %struct.dpni_error_cfg, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %10 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %11 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %10, i32 0, i32 6
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %6, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %19 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %18, i32 0, i32 5
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %6, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 8
  %28 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %6, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @DPAA2_ETH_RX_BUF_SIZE, align 4
  %33 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %6, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %38 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %41 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dpni_set_pools(i32 %39, i32 0, i32 %42, %struct.dpni_pools_cfg* %6)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %170

50:                                               ; preds = %1
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i32, i32* @DPAA2_RXH_DEFAULT, align 4
  %53 = call i32 @dpaa2_eth_set_hash(%struct.net_device* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %56, %50
  %65 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %66 = call i32 @dpaa2_eth_set_default_cls(%struct.dpaa2_eth_priv* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69, %64
  %78 = load i32, i32* @DPAA2_FAS_RX_ERR_MASK, align 4
  %79 = getelementptr inbounds %struct.dpni_error_cfg, %struct.dpni_error_cfg* %7, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.dpni_error_cfg, %struct.dpni_error_cfg* %7, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* @DPNI_ERROR_ACTION_DISCARD, align 4
  %82 = getelementptr inbounds %struct.dpni_error_cfg, %struct.dpni_error_cfg* %7, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %84 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %87 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @dpni_set_errors_behavior(i32 %85, i32 0, i32 %88, %struct.dpni_error_cfg* %7)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %170

96:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %149, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %100 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %152

103:                                              ; preds = %97
  %104 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %105 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %104, i32 0, i32 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %130 [
    i32 129, label %112
    i32 128, label %121
  ]

112:                                              ; preds = %103
  %113 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %114 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %115 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %114, i32 0, i32 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i64 %118
  %120 = call i32 @setup_rx_flow(%struct.dpaa2_eth_priv* %113, %struct.TYPE_11__* %119)
  store i32 %120, i32* %8, align 4
  br label %143

121:                                              ; preds = %103
  %122 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %123 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %124 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %123, i32 0, i32 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = call i32 @setup_tx_flow(%struct.dpaa2_eth_priv* %122, %struct.TYPE_11__* %128)
  store i32 %129, i32* %8, align 4
  br label %143

130:                                              ; preds = %103
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %133 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %132, i32 0, i32 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %170

143:                                              ; preds = %121, %112
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %2, align 4
  br label %170

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %97

152:                                              ; preds = %97
  %153 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %154 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %157 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @DPNI_QUEUE_TX, align 4
  %160 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %161 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %160, i32 0, i32 1
  %162 = call i32 @dpni_get_qdid(i32 %155, i32 0, i32 %158, i32 %159, i32* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %152
  %166 = load %struct.device*, %struct.device** %5, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* %2, align 4
  br label %170

169:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %165, %146, %130, %92, %46
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @dpni_set_pools(i32, i32, i32, %struct.dpni_pools_cfg*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dpaa2_eth_set_hash(%struct.net_device*, i32) #1

declare dso_local i32 @dpaa2_eth_set_default_cls(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpni_set_errors_behavior(i32, i32, i32, %struct.dpni_error_cfg*) #1

declare dso_local i32 @setup_rx_flow(%struct.dpaa2_eth_priv*, %struct.TYPE_11__*) #1

declare dso_local i32 @setup_tx_flow(%struct.dpaa2_eth_priv*, %struct.TYPE_11__*) #1

declare dso_local i32 @dpni_get_qdid(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
