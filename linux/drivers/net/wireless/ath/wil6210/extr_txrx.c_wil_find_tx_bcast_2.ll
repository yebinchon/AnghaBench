; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_bcast_2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_find_tx_bcast_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil_ring = type { i32 }
%struct.wil6210_priv = type { i64**, i64, %struct.TYPE_2__*, %struct.wil_ring_tx_data*, %struct.wil_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.wil_ring_tx_data = type { i64, i32, i32 }
%struct.wil6210_vif = type { i64 }
%struct.sk_buff = type { i64 }

@WIL6210_MAX_TX_RINGS = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Tx while no vrings active?\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"BCAST -> ring %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"BCAST DUP -> ring %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"skb_copy failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wil_ring* (%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.sk_buff*)* @wil_find_tx_bcast_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wil_ring* @wil_find_tx_bcast_2(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.wil_ring*, align 8
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wil_ring*, align 8
  %9 = alloca %struct.wil_ring*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.wil_ring_tx_data*, align 8
  %15 = alloca %struct.wil_ring_tx_data*, align 8
  %16 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call i64* @wil_skb_get_sa(%struct.sk_buff* %17)
  store i64* %18, i64** %13, align 8
  %19 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %20 = call i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv* %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %105, %3
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %108

26:                                               ; preds = %22
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %28 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %27, i32 0, i32 4
  %29 = load %struct.wil_ring*, %struct.wil_ring** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %29, i64 %31
  store %struct.wil_ring* %32, %struct.wil_ring** %8, align 8
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %34 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %33, i32 0, i32 3
  %35 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %35, i64 %37
  store %struct.wil_ring_tx_data* %38, %struct.wil_ring_tx_data** %14, align 8
  %39 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  %40 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %26
  %44 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %14, align 8
  %45 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %14, align 8
  %50 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %53 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48, %43, %26
  br label %105

57:                                               ; preds = %48
  %58 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %59 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %58, i32 0, i32 0
  %60 = load i64**, i64*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %60, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %69 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %105

73:                                               ; preds = %57
  %74 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %75 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %74, i32 0, i32 3
  %76 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %76, i64 %78
  %80 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %73
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @ETH_P_PAE, align 4
  %88 = call i64 @cpu_to_be16(i32 %87)
  %89 = icmp ne i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %105

91:                                               ; preds = %83, %73
  %92 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %93 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64*, i64** %13, align 8
  %100 = load i32, i32* @ETH_ALEN, align 4
  %101 = call i64 @memcmp(i32 %98, i64* %99, i32 %100)
  %102 = icmp eq i64 0, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %105

104:                                              ; preds = %91
  br label %111

105:                                              ; preds = %103, %90, %72, %56
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %22

108:                                              ; preds = %22
  %109 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %110 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.wil_ring* null, %struct.wil_ring** %4, align 8
  br label %228

111:                                              ; preds = %104
  %112 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @wil_set_da_for_vring(%struct.wil6210_priv* %115, %struct.sk_buff* %116, i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %223, %111
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @WIL6210_MAX_TX_RINGS, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %226

125:                                              ; preds = %121
  %126 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %127 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %126, i32 0, i32 4
  %128 = load %struct.wil_ring*, %struct.wil_ring** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %128, i64 %130
  store %struct.wil_ring* %131, %struct.wil_ring** %9, align 8
  %132 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %133 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %132, i32 0, i32 3
  %134 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %134, i64 %136
  store %struct.wil_ring_tx_data* %137, %struct.wil_ring_tx_data** %15, align 8
  %138 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %139 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %125
  %143 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %15, align 8
  %144 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %147 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142, %125
  br label %223

151:                                              ; preds = %142
  %152 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %153 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %152, i32 0, i32 0
  %154 = load i64**, i64*** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64*, i64** %154, i64 %156
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %12, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %163 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp uge i64 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  br label %223

167:                                              ; preds = %151
  %168 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %169 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %168, i32 0, i32 3
  %170 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %170, i64 %172
  %174 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %167
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @ETH_P_PAE, align 4
  %182 = call i64 @cpu_to_be16(i32 %181)
  %183 = icmp ne i64 %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %223

185:                                              ; preds = %177, %167
  %186 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %187 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %186, i32 0, i32 2
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i64*, i64** %13, align 8
  %194 = load i32, i32* @ETH_ALEN, align 4
  %195 = call i64 @memcmp(i32 %192, i64* %193, i32 %194)
  %196 = icmp eq i64 0, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %223

198:                                              ; preds = %185
  %199 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %200 = load i32, i32* @GFP_ATOMIC, align 4
  %201 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %199, i32 %200)
  store %struct.sk_buff* %201, %struct.sk_buff** %10, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %203 = icmp ne %struct.sk_buff* %202, null
  br i1 %203, label %204, label %219

204:                                              ; preds = %198
  %205 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %206 = load i32, i32* %11, align 4
  %207 = call i32 (%struct.wil6210_priv*, i8*, ...) @wil_dbg_txrx(%struct.wil6210_priv* %205, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  %208 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @wil_set_da_for_vring(%struct.wil6210_priv* %208, %struct.sk_buff* %209, i32 %210)
  %212 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %213 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %214 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %216 = call i32 @wil_tx_ring(%struct.wil6210_priv* %212, %struct.wil6210_vif* %213, %struct.wil_ring* %214, %struct.sk_buff* %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %218 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %217)
  br label %222

219:                                              ; preds = %198
  %220 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %221 = call i32 @wil_err(%struct.wil6210_priv* %220, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %204
  br label %223

223:                                              ; preds = %222, %197, %184, %166, %150
  %224 = load i32, i32* %11, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %11, align 4
  br label %121

226:                                              ; preds = %121
  %227 = load %struct.wil_ring*, %struct.wil_ring** %8, align 8
  store %struct.wil_ring* %227, %struct.wil_ring** %4, align 8
  br label %228

228:                                              ; preds = %226, %108
  %229 = load %struct.wil_ring*, %struct.wil_ring** %4, align 8
  ret %struct.wil_ring* %229
}

declare dso_local i64* @wil_skb_get_sa(%struct.sk_buff*) #1

declare dso_local i32 @wil_get_min_tx_ring_id(%struct.wil6210_priv*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

declare dso_local i32 @wil_dbg_txrx(%struct.wil6210_priv*, i8*, ...) #1

declare dso_local i32 @wil_set_da_for_vring(%struct.wil6210_priv*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @wil_tx_ring(%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.wil_ring*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
