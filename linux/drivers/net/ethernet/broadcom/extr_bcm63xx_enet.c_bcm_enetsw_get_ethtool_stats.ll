; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_stats = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.bcm_enet_priv = type { i32 }

@BCM_ENETSW_STATS_LEN = common dso_local global i32 0, align 4
@bcm_enetsw_gstrings_stats = common dso_local global %struct.bcm_enet_stats* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @bcm_enetsw_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enetsw_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcm_enet_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_enet_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bcm_enet_stats*, align 8
  %15 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.bcm_enet_priv* %17, %struct.bcm_enet_priv** %7, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %67, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BCM_ENETSW_STATS_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %70

22:                                               ; preds = %18
  %23 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** @bcm_enetsw_gstrings_stats, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %23, i64 %25
  store %struct.bcm_enet_stats* %26, %struct.bcm_enet_stats** %9, align 8
  %27 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %9, align 8
  %28 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %67

33:                                               ; preds = %22
  %34 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @ENETSW_MIB_REG(i32 %35)
  %37 = call i32 @enetsw_readl(%struct.bcm_enet_priv* %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %39 = bitcast %struct.bcm_enet_priv* %38 to i8*
  %40 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %9, align 8
  %41 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %12, align 8
  %45 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %9, align 8
  %46 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %50, label %62

50:                                               ; preds = %33
  %51 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @ENETSW_MIB_REG(i32 %53)
  %55 = call i32 @enetsw_readl(%struct.bcm_enet_priv* %51, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %56, 32
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %57, %58
  %60 = load i8*, i8** %12, align 8
  %61 = bitcast i8* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %33
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %12, align 8
  %65 = bitcast i8* %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %50
  br label %67

67:                                               ; preds = %66, %32
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %18

70:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %121, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @BCM_ENETSW_STATS_LEN, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %71
  %76 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** @bcm_enetsw_gstrings_stats, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %76, i64 %78
  store %struct.bcm_enet_stats* %79, %struct.bcm_enet_stats** %14, align 8
  %80 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %14, align 8
  %81 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = bitcast i32* %86 to i8*
  %88 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %14, align 8
  %89 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  store i8* %92, i8** %15, align 8
  br label %101

93:                                               ; preds = %75
  %94 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %7, align 8
  %95 = bitcast %struct.bcm_enet_priv* %94 to i8*
  %96 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %14, align 8
  %97 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  store i8* %100, i8** %15, align 8
  br label %101

101:                                              ; preds = %93, %84
  %102 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %14, align 8
  %103 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %105, 4
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i8*, i8** %15, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = load i32, i32* %109, align 4
  br label %115

111:                                              ; preds = %101
  %112 = load i8*, i8** %15, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* %113, align 4
  br label %115

115:                                              ; preds = %111, %107
  %116 = phi i32 [ %110, %107 ], [ %114, %111 ]
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %71

124:                                              ; preds = %71
  ret void
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enetsw_readl(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @ENETSW_MIB_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
