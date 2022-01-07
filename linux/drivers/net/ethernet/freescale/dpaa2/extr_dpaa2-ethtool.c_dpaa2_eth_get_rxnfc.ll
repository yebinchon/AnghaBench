; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dpaa2_eth_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }

@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @dpaa2_eth_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dpaa2_eth_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dpaa2_eth_priv* %13, %struct.dpaa2_eth_priv** %8, align 8
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %15 = call i32 @dpaa2_eth_fs_count(%struct.dpaa2_eth_priv* %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %132 [
    i32 129, label %19
    i32 128, label %25
    i32 131, label %30
    i32 130, label %40
    i32 132, label %90
  ]

19:                                               ; preds = %3
  %20 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %21 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %135

25:                                               ; preds = %3
  %26 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %27 = call i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %26)
  %28 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %135

30:                                               ; preds = %3
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %34 = call i32 @num_rules(%struct.dpaa2_eth_priv* %33)
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %36 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %39 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %135

40:                                               ; preds = %3
  %41 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %136

50:                                               ; preds = %40
  %51 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %52 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @array_index_nospec(i32 %54, i32 %55)
  %57 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %58 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %61 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %64 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %50
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %136

75:                                               ; preds = %50
  %76 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %77 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %76, i32 0, i32 3
  %78 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %79 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %82 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = bitcast %struct.TYPE_3__* %77 to i8*
  %89 = bitcast %struct.TYPE_3__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 4, i1 false)
  br label %135

90:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  %96 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %8, align 8
  %97 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  br label %122

106:                                              ; preds = %95
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %109 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %107, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EMSGSIZE, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %136

115:                                              ; preds = %106
  %116 = load i32, i32* %10, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %116, i32* %121, align 4
  br label %122

122:                                              ; preds = %115, %105
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %91

125:                                              ; preds = %91
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %128 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %131 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %135

132:                                              ; preds = %3
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %125, %75, %30, %25, %19
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %132, %112, %72, %47
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpaa2_eth_fs_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @num_rules(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
