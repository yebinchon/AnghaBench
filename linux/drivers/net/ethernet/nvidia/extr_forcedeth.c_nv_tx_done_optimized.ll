; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_tx_done_optimized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nvidia/extr_forcedeth.c_nv_tx_done_optimized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.TYPE_9__, %struct.TYPE_8__, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.ring_desc_ex* }
%struct.ring_desc_ex = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.ring_desc_ex* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.ring_desc_ex* }

@NV_TX2_VALID = common dso_local global i32 0, align 4
@NV_TX2_LASTPACKET = common dso_local global i32 0, align 4
@NV_TX2_ERROR = common dso_local global i32 0, align 4
@NV_TX2_RETRYERROR = common dso_local global i32 0, align 4
@NV_TX2_RETRYCOUNT_MASK = common dso_local global i32 0, align 4
@DEV_HAS_GEAR_MODE = common dso_local global i32 0, align 4
@stat_tx_packets = common dso_local global i32 0, align 4
@stat_tx_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nv_tx_done_optimized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_tx_done_optimized(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ring_desc_ex*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.fe_priv* %12, %struct.fe_priv** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %14 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %15, align 8
  store %struct.ring_desc_ex* %16, %struct.ring_desc_ex** %8, align 8
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %179, %2
  %18 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %19 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %20, align 8
  %22 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %23 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %24, align 8
  %26 = icmp ne %struct.ring_desc_ex* %21, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %17
  %28 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %29 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %30, align 8
  %32 = getelementptr inbounds %struct.ring_desc_ex, %struct.ring_desc_ex* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @NV_TX2_VALID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %27, %17
  %43 = phi i1 [ false, %27 ], [ false, %17 ], [ %41, %38 ]
  br i1 %43, label %44, label %180

44:                                               ; preds = %42
  %45 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %46 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %47 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %46, i32 0, i32 5
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = call i32 @nv_unmap_txskb(%struct.fe_priv* %45, %struct.TYPE_11__* %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @NV_TX2_LASTPACKET, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %135

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @NV_TX2_ERROR, align 4
  %57 = and i32 %55, %56
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @NV_TX2_RETRYERROR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NV_TX2_RETRYCOUNT_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %72 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DEV_HAS_GEAR_MODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @nv_gear_backoff_reseed(%struct.net_device* %78)
  br label %83

80:                                               ; preds = %70
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @nv_legacybackoff_reseed(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %65, %60
  br label %104

85:                                               ; preds = %54
  %86 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %87 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %86, i32 0, i32 10
  %88 = call i32 @u64_stats_update_begin(i32* %87)
  %89 = load i32, i32* @stat_tx_packets, align 4
  %90 = call i32 @nv_txrx_stats_inc(i32 %89)
  %91 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %92 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %91, i32 0, i32 5
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @stat_tx_bytes, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @nv_txrx_stats_add(i32 %98, i32 %99)
  %101 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %102 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %101, i32 0, i32 10
  %103 = call i32 @u64_stats_update_end(i32* %102)
  br label %104

104:                                              ; preds = %85, %84
  %105 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %106 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %105, i32 0, i32 5
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %9, align 8
  %115 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %116 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %115, i32 0, i32 5
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = call i32 @dev_kfree_skb_any(%struct.TYPE_12__* %119)
  %121 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %122 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %121, i32 0, i32 5
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  %127 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %128 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %127, i32 0, i32 9
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %104
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = call i32 @nv_tx_flip_ownership(%struct.net_device* %132)
  br label %134

134:                                              ; preds = %131, %104
  br label %135

135:                                              ; preds = %134, %44
  %136 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %137 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %138, align 8
  %140 = getelementptr inbounds %struct.ring_desc_ex, %struct.ring_desc_ex* %139, i32 1
  store %struct.ring_desc_ex* %140, %struct.ring_desc_ex** %138, align 8
  %141 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %142 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to %struct.ring_desc_ex*
  %147 = icmp eq %struct.ring_desc_ex* %139, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %135
  %152 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %153 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %154, align 8
  %156 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %157 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  store %struct.ring_desc_ex* %155, %struct.ring_desc_ex** %158, align 8
  br label %159

159:                                              ; preds = %151, %135
  %160 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %161 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %160, i32 0, i32 5
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 1
  store %struct.TYPE_11__* %163, %struct.TYPE_11__** %161, align 8
  %164 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %165 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to %struct.TYPE_11__*
  %169 = icmp eq %struct.TYPE_11__* %162, %168
  %170 = zext i1 %169 to i32
  %171 = call i64 @unlikely(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %159
  %174 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %175 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %174, i32 0, i32 4
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %178 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %177, i32 0, i32 5
  store %struct.TYPE_11__* %176, %struct.TYPE_11__** %178, align 8
  br label %179

179:                                              ; preds = %173, %159
  br label %17

180:                                              ; preds = %42
  %181 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %182 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i64, i64* %9, align 8
  %186 = call i32 @netdev_completed_queue(i32 %183, i32 %184, i64 %185)
  %187 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %188 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %198

191:                                              ; preds = %180
  %192 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %193 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %194, align 8
  %196 = load %struct.ring_desc_ex*, %struct.ring_desc_ex** %8, align 8
  %197 = icmp ne %struct.ring_desc_ex* %195, %196
  br label %198

198:                                              ; preds = %191, %180
  %199 = phi i1 [ false, %180 ], [ %197, %191 ]
  %200 = zext i1 %199 to i32
  %201 = call i64 @unlikely(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %205 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %204, i32 0, i32 1
  store i32 0, i32* %205, align 4
  %206 = load %struct.net_device*, %struct.net_device** %3, align 8
  %207 = call i32 @netif_wake_queue(%struct.net_device* %206)
  br label %208

208:                                              ; preds = %203, %198
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @nv_unmap_txskb(%struct.fe_priv*, %struct.TYPE_11__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nv_gear_backoff_reseed(%struct.net_device*) #1

declare dso_local i32 @nv_legacybackoff_reseed(%struct.net_device*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @nv_txrx_stats_inc(i32) #1

declare dso_local i32 @nv_txrx_stats_add(i32, i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_12__*) #1

declare dso_local i32 @nv_tx_flip_ownership(%struct.net_device*) #1

declare dso_local i32 @netdev_completed_queue(i32, i32, i64) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
