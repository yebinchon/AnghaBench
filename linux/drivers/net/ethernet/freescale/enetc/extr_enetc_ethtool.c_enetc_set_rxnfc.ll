; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_4__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @enetc_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.enetc_ndev_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.enetc_ndev_priv* %9, %struct.enetc_ndev_priv** %6, align 8
  %10 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %115 [
    i32 128, label %13
    i32 129, label %80
  ]

13:                                               ; preds = %2
  %14 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %19 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %13
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %33 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RX_CLS_FLOW_DISC, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %119

46:                                               ; preds = %36, %27
  %47 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %48 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 1
  %52 = call i32 @enetc_set_cls_entry(%struct.TYPE_5__* %49, %struct.TYPE_6__* %51, i32 1)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %119

57:                                               ; preds = %46
  %58 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %59 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %67, i32 0, i32 1
  %69 = bitcast %struct.TYPE_6__* %66 to i8*
  %70 = bitcast %struct.TYPE_6__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  %71 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %72 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %118

80:                                               ; preds = %2
  %81 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %86 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp uge i64 %84, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %119

94:                                               ; preds = %80
  %95 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %96 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %98, i32 0, i32 1
  %100 = call i32 @enetc_set_cls_entry(%struct.TYPE_5__* %97, %struct.TYPE_6__* %99, i32 0)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %119

105:                                              ; preds = %94
  %106 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %6, align 8
  %107 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %118

115:                                              ; preds = %2
  %116 = load i32, i32* @EOPNOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %119

118:                                              ; preds = %105, %57
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %115, %103, %91, %55, %43, %24
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_set_cls_entry(%struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
