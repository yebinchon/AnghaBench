; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_push_rx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_push_rx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.ef4_farch_filter_state* }
%struct.ef4_farch_filter_state = type { %struct.ef4_farch_filter_table* }
%struct.ef4_farch_filter_table = type { i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@FR_BZ_RX_FILTER_CTL = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TABLE_RX_IP = common dso_local global i64 0, align 8
@FRF_BZ_TCP_FULL_SRCH_LIMIT = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TCP_FULL = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL = common dso_local global i32 0, align 4
@FRF_BZ_TCP_WILD_SRCH_LIMIT = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TCP_WILD = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD = common dso_local global i32 0, align 4
@FRF_BZ_UDP_FULL_SRCH_LIMIT = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_UDP_FULL = common dso_local global i64 0, align 8
@FRF_BZ_UDP_WILD_SRCH_LIMIT = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_UDP_WILD = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_TABLE_RX_MAC = common dso_local global i64 0, align 8
@FRF_CZ_ETHERNET_FULL_SEARCH_LIMIT = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_MAC_FULL = common dso_local global i64 0, align 8
@FRF_CZ_ETHERNET_WILDCARD_SEARCH_LIMIT = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_MAC_WILD = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_TABLE_RX_DEF = common dso_local global i64 0, align 8
@FRF_CZ_UNICAST_NOMATCH_Q_ID = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_INDEX_UC_DEF = common dso_local global i64 0, align 8
@FRF_CZ_UNICAST_NOMATCH_RSS_ENABLED = common dso_local global i32 0, align 4
@EF4_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@FRF_CZ_MULTICAST_NOMATCH_Q_ID = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_INDEX_MC_DEF = common dso_local global i64 0, align 8
@FRF_CZ_MULTICAST_NOMATCH_RSS_ENABLED = common dso_local global i32 0, align 4
@FRF_BZ_SCATTER_ENBL_NO_MATCH_Q = common dso_local global i32 0, align 4
@EF4_FILTER_FLAG_RX_SCATTER = common dso_local global i32 0, align 4
@EF4_REV_FALCON_B0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @ef4_farch_filter_push_rx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_farch_filter_push_rx_config(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.ef4_farch_filter_state*, align 8
  %4 = alloca %struct.ef4_farch_filter_table*, align 8
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 1
  %8 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %7, align 8
  store %struct.ef4_farch_filter_state* %8, %struct.ef4_farch_filter_state** %3, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %10 = load i32, i32* @FR_BZ_RX_FILTER_CTL, align 4
  %11 = call i32 @ef4_reado(%struct.ef4_nic* %9, i32* %5, i32 %10)
  %12 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %3, align 8
  %13 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %12, i32 0, i32 0
  %14 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %13, align 8
  %15 = load i64, i64* @EF4_FARCH_FILTER_TABLE_RX_IP, align 8
  %16 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %14, i64 %15
  store %struct.ef4_farch_filter_table* %16, %struct.ef4_farch_filter_table** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FRF_BZ_TCP_FULL_SRCH_LIMIT, align 4
  %19 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %20 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @EF4_FARCH_FILTER_TCP_FULL, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @EF4_SET_OWORD_FIELD(i32 %17, i32 %18, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @FRF_BZ_TCP_WILD_SRCH_LIMIT, align 4
  %30 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %31 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @EF4_FARCH_FILTER_TCP_WILD, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @EF4_SET_OWORD_FIELD(i32 %28, i32 %29, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @FRF_BZ_UDP_FULL_SRCH_LIMIT, align 4
  %41 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %42 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @EF4_FARCH_FILTER_UDP_FULL, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @EF4_SET_OWORD_FIELD(i32 %39, i32 %40, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @FRF_BZ_UDP_WILD_SRCH_LIMIT, align 4
  %52 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %53 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @EF4_FARCH_FILTER_UDP_WILD, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @EF4_SET_OWORD_FIELD(i32 %50, i32 %51, i32 %59)
  %61 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %3, align 8
  %62 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %61, i32 0, i32 0
  %63 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %62, align 8
  %64 = load i64, i64* @EF4_FARCH_FILTER_TABLE_RX_MAC, align 8
  %65 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %63, i64 %64
  store %struct.ef4_farch_filter_table* %65, %struct.ef4_farch_filter_table** %4, align 8
  %66 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %67 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %1
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @FRF_CZ_ETHERNET_FULL_SEARCH_LIMIT, align 4
  %73 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %74 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @EF4_FARCH_FILTER_MAC_FULL, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @EF4_SET_OWORD_FIELD(i32 %71, i32 %72, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @FRF_CZ_ETHERNET_WILDCARD_SEARCH_LIMIT, align 4
  %84 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %85 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @EF4_FARCH_FILTER_MAC_WILD, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @EF4_SET_OWORD_FIELD(i32 %82, i32 %83, i32 %91)
  br label %93

93:                                               ; preds = %70, %1
  %94 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %3, align 8
  %95 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %94, i32 0, i32 0
  %96 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %95, align 8
  %97 = load i64, i64* @EF4_FARCH_FILTER_TABLE_RX_DEF, align 8
  %98 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %96, i64 %97
  store %struct.ef4_farch_filter_table* %98, %struct.ef4_farch_filter_table** %4, align 8
  %99 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %100 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %180

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @FRF_CZ_UNICAST_NOMATCH_Q_ID, align 4
  %106 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %107 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i64, i64* @EF4_FARCH_FILTER_INDEX_UC_DEF, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @EF4_SET_OWORD_FIELD(i32 %104, i32 %105, i32 %112)
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @FRF_CZ_UNICAST_NOMATCH_RSS_ENABLED, align 4
  %116 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %117 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i64, i64* @EF4_FARCH_FILTER_INDEX_UC_DEF, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @EF4_FILTER_FLAG_RX_RSS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @EF4_SET_OWORD_FIELD(i32 %114, i32 %115, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @FRF_CZ_MULTICAST_NOMATCH_Q_ID, align 4
  %132 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %133 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i64, i64* @EF4_FARCH_FILTER_INDEX_MC_DEF, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @EF4_SET_OWORD_FIELD(i32 %130, i32 %131, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @FRF_CZ_MULTICAST_NOMATCH_RSS_ENABLED, align 4
  %142 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %143 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i64, i64* @EF4_FARCH_FILTER_INDEX_MC_DEF, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @EF4_FILTER_FLAG_RX_RSS, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i32 @EF4_SET_OWORD_FIELD(i32 %140, i32 %141, i32 %154)
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @FRF_BZ_SCATTER_ENBL_NO_MATCH_Q, align 4
  %158 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %159 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i64, i64* @EF4_FARCH_FILTER_INDEX_UC_DEF, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %166 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %165, i32 0, i32 1
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i64, i64* @EF4_FARCH_FILTER_INDEX_MC_DEF, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %164, %171
  %173 = load i32, i32* @EF4_FILTER_FLAG_RX_SCATTER, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @EF4_SET_OWORD_FIELD(i32 %156, i32 %157, i32 %178)
  br label %193

180:                                              ; preds = %93
  %181 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %182 = call i64 @ef4_nic_rev(%struct.ef4_nic* %181)
  %183 = load i64, i64* @EF4_REV_FALCON_B0, align 8
  %184 = icmp sge i64 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @FRF_BZ_SCATTER_ENBL_NO_MATCH_Q, align 4
  %188 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %189 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @EF4_SET_OWORD_FIELD(i32 %186, i32 %187, i32 %190)
  br label %192

192:                                              ; preds = %185, %180
  br label %193

193:                                              ; preds = %192, %103
  %194 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %195 = load i32, i32* @FR_BZ_RX_FILTER_CTL, align 4
  %196 = call i32 @ef4_writeo(%struct.ef4_nic* %194, i32* %5, i32 %195)
  ret void
}

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
