; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_apply_rateset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_apply_rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i8** }
%struct.TYPE_5__ = type { i32, i8* }

@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@CARL9170_TX_MAX_RATES = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@AR9170_TX_MAC_AGGR = common dso_local global i32 0, align 4
@AR9170_TX_MAC_PROT_RTS = common dso_local global i32 0, align 4
@AR9170_TX_MAC_PROT_CTS = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_RI_TRIES = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_RI_ERP_PROT_S = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_RI_AMPDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.ieee80211_tx_info*, %struct.sk_buff*)* @carl9170_tx_apply_rateset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_tx_apply_rateset(%struct.ar9170* %0, %struct.ieee80211_tx_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_rate*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct._carl9170_tx_superframe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %19, %struct._carl9170_tx_superframe** %9, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %20)
  store %struct.ieee80211_tx_info* %21, %struct.ieee80211_tx_info** %8, align 8
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %207, %3
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @CARL9170_TX_MAX_RATES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %210

53:                                               ; preds = %49
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %57, i64 %59
  store %struct.ieee80211_tx_rate* %60, %struct.ieee80211_tx_rate** %7, align 8
  %61 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %210

66:                                               ; preds = %53
  %67 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %68 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %69 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %70 = call i8* @carl9170_tx_physet(%struct.ar9170* %67, %struct.ieee80211_tx_info* %68, %struct.ieee80211_tx_rate* %69)
  store i8* %70, i8** %13, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %123

73:                                               ; preds = %66
  %74 = call i32 @cpu_to_le16(i32 0)
  store i32 %74, i32* %14, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %9, align 8
  %77 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %73
  %82 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* @AR9170_TX_MAC_AGGR, align 4
  %90 = call i32 @cpu_to_le16(i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %88, %81, %73
  %94 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %95 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i64 @carl9170_tx_rts_check(%struct.ar9170* %94, %struct.ieee80211_tx_rate* %95, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* @AR9170_TX_MAC_PROT_RTS, align 4
  %102 = call i32 @cpu_to_le16(i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %14, align 4
  br label %116

105:                                              ; preds = %93
  %106 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %107 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %108 = call i64 @carl9170_tx_cts_check(%struct.ar9170* %106, %struct.ieee80211_tx_rate* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i32, i32* @AR9170_TX_MAC_PROT_CTS, align 4
  %112 = call i32 @cpu_to_le16(i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i32, i32* %14, align 4
  %118 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %9, align 8
  %119 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %117
  store i32 %122, i32* %120, align 8
  br label %133

123:                                              ; preds = %66
  %124 = load i8*, i8** %13, align 8
  %125 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %9, align 8
  %126 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i8**, i8*** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  store i8* %124, i8** %132, align 8
  br label %133

133:                                              ; preds = %123, %116
  %134 = load i32, i32* @CARL9170_TX_SUPER_RI_TRIES, align 4
  %135 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %9, align 8
  %136 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %144 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SET_VAL(i32 %134, i32 %142, i32 %145)
  %147 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %148 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i64 @carl9170_tx_rts_check(%struct.ar9170* %147, %struct.ieee80211_tx_rate* %148, i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %133
  %154 = load i32, i32* @AR9170_TX_MAC_PROT_RTS, align 4
  %155 = load i32, i32* @CARL9170_TX_SUPER_RI_ERP_PROT_S, align 4
  %156 = shl i32 %154, %155
  %157 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %9, align 8
  %158 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %156
  store i32 %165, i32* %163, align 4
  br label %185

166:                                              ; preds = %133
  %167 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %168 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %169 = call i64 @carl9170_tx_cts_check(%struct.ar9170* %167, %struct.ieee80211_tx_rate* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = load i32, i32* @AR9170_TX_MAC_PROT_CTS, align 4
  %173 = load i32, i32* @CARL9170_TX_SUPER_RI_ERP_PROT_S, align 4
  %174 = shl i32 %172, %173
  %175 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %9, align 8
  %176 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %174
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %171, %166
  br label %185

185:                                              ; preds = %184, %153
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %185
  %189 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %190 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %188
  %196 = load i32, i32* @CARL9170_TX_SUPER_RI_AMPDU, align 4
  %197 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %9, align 8
  %198 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %196
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %195, %188, %185
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %49

210:                                              ; preds = %65, %49
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i8* @carl9170_tx_physet(%struct.ar9170*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @carl9170_tx_rts_check(%struct.ar9170*, %struct.ieee80211_tx_rate*, i32, i32) #1

declare dso_local i64 @carl9170_tx_cts_check(%struct.ar9170*, %struct.ieee80211_tx_rate*) #1

declare dso_local i32 @SET_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
