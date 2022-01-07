; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.enetc_tx_swbd*, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.enetc_tx_swbd = type { i32, i64, i32*, i32, i64 }
%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.enetc_tx_bd = type { i32 }

@ENETC_DEFAULT_TX_WORK = common dso_local global i32 0, align 4
@ENETC_TXBD_FLAGS_W = common dso_local global i32 0, align 4
@ENETC_TXBDS_MAX_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_bdr*, i32)* @enetc_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_clean_tx_ring(%struct.enetc_bdr* %0, i32 %1) #0 {
  %3 = alloca %struct.enetc_bdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_tx_swbd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.enetc_ndev_priv*, align 8
  %15 = alloca %union.enetc_tx_bd*, align 8
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %17 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %16, i32 0, i32 6
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %20 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %23 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %22, i32 0, i32 5
  %24 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %24, i64 %26
  store %struct.enetc_tx_swbd* %27, %struct.enetc_tx_swbd** %8, align 8
  %28 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @enetc_bd_ready_count(%struct.enetc_bdr* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %166, %2
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ENETC_DEFAULT_TX_WORK, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %167

40:                                               ; preds = %38
  %41 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %42 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %13, align 4
  %48 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %49 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %40
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %54)
  store %struct.enetc_ndev_priv* %55, %struct.enetc_ndev_priv** %14, align 8
  %56 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call %union.enetc_tx_bd* @ENETC_TXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %56, i32 %57)
  store %union.enetc_tx_bd* %58, %union.enetc_tx_bd** %15, align 8
  %59 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %15, align 8
  %60 = bitcast %union.enetc_tx_bd* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ENETC_TXBD_FLAGS_W, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %53
  %66 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %67 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %14, align 8
  %72 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %15, align 8
  %76 = call i32 @enetc_get_tx_tstamp(i32* %74, %union.enetc_tx_bd* %75, i32* %12)
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %70, %65, %53
  br label %78

78:                                               ; preds = %77, %40
  %79 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %80 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @likely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %86 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %87 = call i32 @enetc_unmap_tx_buff(%struct.enetc_bdr* %85, %struct.enetc_tx_swbd* %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %97 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @enetc_tstamp_tx(i32* %98, i32 %99)
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %95, %91
  %102 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %103 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @napi_consume_skb(i32* %104, i32 %105)
  %107 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %108 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %107, i32 0, i32 2
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %101, %88
  %110 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %111 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %10, align 4
  %119 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %120 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %119, i32 1
  store %struct.enetc_tx_swbd* %120, %struct.enetc_tx_swbd** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %125 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  %132 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %133 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %132, i32 0, i32 5
  %134 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %133, align 8
  store %struct.enetc_tx_swbd* %134, %struct.enetc_tx_swbd** %8, align 8
  br label %135

135:                                              ; preds = %131, %109
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  %141 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %142 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %145 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @BIT(i32 %146)
  %148 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %149 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 16, %150
  %152 = call i32 @BIT(i32 %151)
  %153 = or i32 %147, %152
  %154 = call i32 @enetc_wr_reg(i32 %143, i32 %153)
  br label %155

155:                                              ; preds = %138, %135
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @enetc_bd_ready_count(%struct.enetc_bdr* %163, i32 %164)
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %162, %155
  br label %31

167:                                              ; preds = %38
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %170 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %173 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %171
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %179 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %177
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %167
  %186 = load %struct.net_device*, %struct.net_device** %5, align 8
  %187 = call i64 @netif_carrier_ok(%struct.net_device* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = load %struct.net_device*, %struct.net_device** %5, align 8
  %191 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %192 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @__netif_subqueue_stopped(%struct.net_device* %190, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %198 = call i64 @enetc_bd_unused(%struct.enetc_bdr* %197)
  %199 = load i64, i64* @ENETC_TXBDS_MAX_NEEDED, align 8
  %200 = icmp sge i64 %198, %199
  br label %201

201:                                              ; preds = %196, %189, %185, %167
  %202 = phi i1 [ false, %189 ], [ false, %185 ], [ false, %167 ], [ %200, %196 ]
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = load %struct.net_device*, %struct.net_device** %5, align 8
  %208 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %209 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @netif_wake_subqueue(%struct.net_device* %207, i32 %210)
  br label %212

212:                                              ; preds = %206, %201
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @ENETC_DEFAULT_TX_WORK, align 4
  %215 = icmp ne i32 %213, %214
  %216 = zext i1 %215 to i32
  ret i32 %216
}

declare dso_local i32 @enetc_bd_ready_count(%struct.enetc_bdr*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %union.enetc_tx_bd* @ENETC_TXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8, i32) #1

declare dso_local i32 @enetc_get_tx_tstamp(i32*, %union.enetc_tx_bd*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @enetc_unmap_tx_buff(%struct.enetc_bdr*, %struct.enetc_tx_swbd*) #1

declare dso_local i32 @enetc_tstamp_tx(i32*, i32) #1

declare dso_local i32 @napi_consume_skb(i32*, i32) #1

declare dso_local i32 @enetc_wr_reg(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @__netif_subqueue_stopped(%struct.net_device*, i32) #1

declare dso_local i64 @enetc_bd_unused(%struct.enetc_bdr*) #1

declare dso_local i32 @netif_wake_subqueue(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
