; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_stats = type { i64, i32, i32 }
%struct.net_device = type { i32, i32 }
%struct.ethtool_stats = type { i32 }
%struct.bcm_sysport_priv = type { %struct.bcm_sysport_tx_ring*, i64, %struct.u64_stats_sync, %struct.bcm_sysport_stats64 }
%struct.bcm_sysport_tx_ring = type { i8*, i8* }
%struct.u64_stats_sync = type { i32 }
%struct.bcm_sysport_stats64 = type { i8*, i8* }

@BCM_SYSPORT_STATS_LEN = common dso_local global i32 0, align 4
@bcm_sysport_gstrings_stats = common dso_local global %struct.bcm_sysport_stats* null, align 8
@BCM_SYSPORT_STAT_NETDEV = common dso_local global i64 0, align 8
@BCM_SYSPORT_STAT_NETDEV64 = common dso_local global i64 0, align 8
@ETH_SS_STATS = common dso_local global i32 0, align 4
@NUM_SYSPORT_TXQ_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i8**)* @bcm_sysport_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i8** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.bcm_sysport_priv*, align 8
  %8 = alloca %struct.bcm_sysport_stats64*, align 8
  %9 = alloca %struct.u64_stats_sync*, align 8
  %10 = alloca %struct.bcm_sysport_tx_ring*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bcm_sysport_stats*, align 8
  %17 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i8** %2, i8*** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.bcm_sysport_priv* %19, %struct.bcm_sysport_priv** %7, align 8
  %20 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %21 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %20, i32 0, i32 3
  store %struct.bcm_sysport_stats64* %21, %struct.bcm_sysport_stats64** %8, align 8
  %22 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %23 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %22, i32 0, i32 2
  store %struct.u64_stats_sync* %23, %struct.u64_stats_sync** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i64 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %29 = call i32 @bcm_sysport_update_mib_counters(%struct.bcm_sysport_priv* %28)
  %30 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %31 = call i32 @bcm_sysport_update_tx_stats(%struct.bcm_sysport_priv* %30, i8** %11, i8** %12)
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.bcm_sysport_stats64*, %struct.bcm_sysport_stats64** %8, align 8
  %34 = getelementptr inbounds %struct.bcm_sysport_stats64, %struct.bcm_sysport_stats64* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.bcm_sysport_stats64*, %struct.bcm_sysport_stats64** %8, align 8
  %37 = getelementptr inbounds %struct.bcm_sysport_stats64, %struct.bcm_sysport_stats64* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %27, %3
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %128, %38
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @BCM_SYSPORT_STATS_LEN, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %131

43:                                               ; preds = %39
  %44 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** @bcm_sysport_gstrings_stats, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %44, i64 %46
  store %struct.bcm_sysport_stats* %47, %struct.bcm_sysport_stats** %16, align 8
  %48 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %16, align 8
  %49 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BCM_SYSPORT_STAT_NETDEV, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = bitcast i32* %55 to i8*
  store i8* %56, i8** %17, align 8
  br label %70

57:                                               ; preds = %43
  %58 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %16, align 8
  %59 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BCM_SYSPORT_STAT_NETDEV64, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.bcm_sysport_stats64*, %struct.bcm_sysport_stats64** %8, align 8
  %65 = bitcast %struct.bcm_sysport_stats64* %64 to i8*
  store i8* %65, i8** %17, align 8
  br label %69

66:                                               ; preds = %57
  %67 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %68 = bitcast %struct.bcm_sysport_priv* %67 to i8*
  store i8* %68, i8** %17, align 8
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %53
  %71 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %72 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %16, align 8
  %77 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @bcm_sysport_lite_stat_valid(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %128

82:                                               ; preds = %75, %70
  %83 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %16, align 8
  %84 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %17, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %17, align 8
  %89 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %16, align 8
  %90 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp eq i64 %92, 8
  br i1 %93, label %94, label %117

94:                                               ; preds = %82
  %95 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %16, align 8
  %96 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BCM_SYSPORT_STAT_NETDEV64, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %111, %100
  %102 = load %struct.u64_stats_sync*, %struct.u64_stats_sync** %9, align 8
  %103 = call i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i8*, i8** %17, align 8
  %105 = bitcast i8* %104 to i8**
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %6, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %101
  %112 = load %struct.u64_stats_sync*, %struct.u64_stats_sync** %9, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i64 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %101, label %116

116:                                              ; preds = %111
  br label %125

117:                                              ; preds = %94, %82
  %118 = load i8*, i8** %17, align 8
  %119 = bitcast i8* %118 to i8**
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** %6, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %120, i8** %124, align 8
  br label %125

125:                                              ; preds = %117, %116
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %125, %81
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %39

131:                                              ; preds = %39
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = load i32, i32* @ETH_SS_STATS, align 4
  %134 = call i32 @bcm_sysport_get_sset_count(%struct.net_device* %132, i32 %133)
  %135 = load %struct.net_device*, %struct.net_device** %4, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @NUM_SYSPORT_TXQ_STAT, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sub nsw i32 %134, %139
  store i32 %140, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %172, %131
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.net_device*, %struct.net_device** %4, align 8
  %144 = getelementptr inbounds %struct.net_device, %struct.net_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %175

147:                                              ; preds = %141
  %148 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %7, align 8
  %149 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %148, i32 0, i32 0
  %150 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %150, i64 %152
  store %struct.bcm_sysport_tx_ring* %153, %struct.bcm_sysport_tx_ring** %10, align 8
  %154 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %10, align 8
  %155 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %6, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %156, i8** %160, align 8
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  %163 = load %struct.bcm_sysport_tx_ring*, %struct.bcm_sysport_tx_ring** %10, align 8
  %164 = getelementptr inbounds %struct.bcm_sysport_tx_ring, %struct.bcm_sysport_tx_ring* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8**, i8*** %6, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  store i8* %165, i8** %169, align 8
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %147
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %141

175:                                              ; preds = %141
  ret void
}

declare dso_local %struct.bcm_sysport_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bcm_sysport_update_mib_counters(%struct.bcm_sysport_priv*) #1

declare dso_local i32 @bcm_sysport_update_tx_stats(%struct.bcm_sysport_priv*, i8**, i8**) #1

declare dso_local i32 @bcm_sysport_lite_stat_valid(i64) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(%struct.u64_stats_sync*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(%struct.u64_stats_sync*, i32) #1

declare dso_local i32 @bcm_sysport_get_sset_count(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
