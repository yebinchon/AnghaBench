; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_ethtool.c_enetc_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.enetc_ndev_priv = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__**, %struct.TYPE_10__** }
%struct.TYPE_13__ = type { %struct.enetc_hw }
%struct.enetc_hw = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@enetc_si_counters = common dso_local global %struct.TYPE_14__* null, align 8
@enetc_port_counters = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @enetc_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.enetc_ndev_priv*, align 8
  %8 = alloca %struct.enetc_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.enetc_ndev_priv* %12, %struct.enetc_ndev_priv** %7, align 8
  %13 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %14 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store %struct.enetc_hw* %16, %struct.enetc_hw** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %36, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enetc_si_counters, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enetc_si_counters, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @enetc_rd64(%struct.enetc_hw* %23, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %17

39:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %43 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %48 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %47, i32 0, i32 4
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %40

65:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %103, %65
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %69 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %66
  %73 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %74 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %73, i32 0, i32 3
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %75, i64 %77
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %89 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %88, i32 0, i32 3
  %90 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %90, i64 %92
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %72
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %66

106:                                              ; preds = %66
  %107 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %108 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = call i32 @enetc_si_is_pf(%struct.TYPE_13__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  br label %136

113:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %133, %113
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enetc_port_counters, align 8
  %117 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %114
  %120 = load %struct.enetc_hw*, %struct.enetc_hw** %8, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** @enetc_port_counters, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @enetc_port_rd(%struct.enetc_hw* %120, i32 %126)
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  br label %133

133:                                              ; preds = %119
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %114

136:                                              ; preds = %112, %114
  ret void
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i32 @enetc_rd64(%struct.enetc_hw*, i32) #1

declare dso_local i32 @enetc_si_is_pf(%struct.TYPE_13__*) #1

declare dso_local i32 @enetc_port_rd(%struct.enetc_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
