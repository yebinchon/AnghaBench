; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.enetc_ndev_priv = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @enetc_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.enetc_ndev_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.enetc_ndev_priv* %12, %struct.enetc_ndev_priv** %8, align 8
  %13 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %142 [
    i32 128, label %16
    i32 129, label %22
    i32 131, label %25
    i32 130, label %63
    i32 132, label %92
  ]

16:                                               ; preds = %3
  %17 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %18 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %145

22:                                               ; preds = %3
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %24 = call i32 @enetc_get_rsshash(%struct.ethtool_rxnfc* %23)
  store i32 %24, i32* %4, align 4
  br label %146

25:                                               ; preds = %3
  %26 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %27 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %59, %25
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %38 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %35
  %44 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %45 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %35

62:                                               ; preds = %35
  br label %145

63:                                               ; preds = %3
  %64 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %65 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %69 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp uge i64 %67, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %146

78:                                               ; preds = %63
  %79 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %80 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %79, i32 0, i32 3
  %81 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %82 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %85 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_4__* %80 to i8*
  %91 = bitcast %struct.TYPE_4__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 8, i1 false)
  br label %145

92:                                               ; preds = %3
  %93 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %94 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %99 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %135, %92
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %103 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %100
  %109 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %8, align 8
  %110 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  br label %135

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %122 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @EMSGSIZE, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %146

128:                                              ; preds = %119
  %129 = load i32, i32* %9, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %129, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %118
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %100

138:                                              ; preds = %100
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %141 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %145

142:                                              ; preds = %3
  %143 = load i32, i32* @EOPNOTSUPP, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %146

145:                                              ; preds = %138, %78, %62, %16
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %142, %125, %75, %22
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetc_get_rsshash(%struct.ethtool_rxnfc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
