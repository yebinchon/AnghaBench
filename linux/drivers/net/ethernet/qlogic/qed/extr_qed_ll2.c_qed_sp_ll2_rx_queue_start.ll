; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_rx_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_rx_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_12__, i64, i32, i32, %struct.qed_ll2_rx_queue }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }
%struct.qed_ll2_rx_queue = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.core_rx_start_ramrod_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, i8*, i32, i8*, i32, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.core_rx_start_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@CORE_RAMROD_RX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@QED_LL2_TYPE_FCOE = common dso_local global i64 0, align 8
@QED_MF_LL2_NON_UNICAST = common dso_local global i32 0, align 4
@QED_LL2_TYPE_ROCE = common dso_local global i32 0, align 4
@QED_LL2_TYPE_IWARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*, i32)* @qed_sp_ll2_rx_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_ll2_rx_queue_start(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ll2_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_ll2_rx_queue*, align 8
  %10 = alloca %struct.core_rx_start_ramrod_data*, align 8
  %11 = alloca %struct.qed_spq_entry*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %16 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %20 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %19, i32 0, i32 4
  store %struct.qed_ll2_rx_queue* %20, %struct.qed_ll2_rx_queue** %9, align 8
  store %struct.core_rx_start_ramrod_data* null, %struct.core_rx_start_ramrod_data** %10, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %11, align 8
  store i32 0, i32* %14, align 4
  %21 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 12)
  %22 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %23 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %32 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load i32, i32* @CORE_RAMROD_RX_QUEUE_START, align 4
  %35 = load i32, i32* @PROTOCOLID_CORE, align 4
  %36 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %33, %struct.qed_spq_entry** %11, i32 %34, i32 %35, %struct.qed_sp_init_data* %12)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %4, align 4
  br label %174

41:                                               ; preds = %3
  %42 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %43 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store %struct.core_rx_start_ramrod_data* %44, %struct.core_rx_start_ramrod_data** %10, align 8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %46 = call i64 @qed_int_get_sp_sb_id(%struct.qed_hwfn* %45)
  %47 = call i8* @cpu_to_le16(i64 %46)
  %48 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %49 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %48, i32 0, i32 15
  store i8* %47, i8** %49, align 8
  %50 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %9, align 8
  %51 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %54 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %53, i32 0, i32 14
  store i32 %52, i32* %54, align 8
  %55 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %56 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %58 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @cpu_to_le16(i64 %60)
  %62 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %63 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %65 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %9, align 8
  %68 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @DMA_REGPAIR_LE(i32 %66, i32 %70)
  %72 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %9, align 8
  %73 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %72, i32 0, i32 0
  %74 = call i64 @qed_chain_get_page_cnt(i32* %73)
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i8* @cpu_to_le16(i64 %75)
  %77 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %78 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %80 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.qed_ll2_rx_queue*, %struct.qed_ll2_rx_queue** %9, align 8
  %83 = getelementptr inbounds %struct.qed_ll2_rx_queue, %struct.qed_ll2_rx_queue* %82, i32 0, i32 0
  %84 = call i32 @qed_chain_get_pbl_phys(i32* %83)
  %85 = call i32 @DMA_REGPAIR_LE(i32 %81, i32 %84)
  %86 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %87 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %91 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  %92 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %93 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %97 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %99 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %100 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = call i64 @test_bit(i32 %98, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %41
  %106 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %107 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @QED_LL2_TYPE_FCOE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %115 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %105, %41
  %117 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %118 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %121 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %123 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %129 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @QED_MF_LL2_NON_UNICAST, align 4
  %131 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %132 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = call i64 @test_bit(i32 %130, i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %116
  %138 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %139 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @QED_LL2_TYPE_ROCE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @QED_LL2_TYPE_IWARP, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %152 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %151, i32 0, i32 3
  store i32 1, i32* %152, align 4
  %153 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %154 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %153, i32 0, i32 4
  store i32 1, i32* %154, align 8
  br label %160

155:                                              ; preds = %146, %142, %137, %116
  %156 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %157 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %156, i32 0, i32 3
  store i32 0, i32* %157, align 4
  %158 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %159 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %158, i32 0, i32 4
  store i32 0, i32* %159, align 8
  br label %160

160:                                              ; preds = %155, %150
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %163 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %6, align 8
  %166 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %170 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %172 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %173 = call i32 @qed_spq_post(%struct.qed_hwfn* %171, %struct.qed_spq_entry* %172, i32* null)
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %160, %39
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @qed_int_get_sp_sb_id(%struct.qed_hwfn*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i64 @qed_chain_get_page_cnt(i32*) #1

declare dso_local i32 @qed_chain_get_pbl_phys(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
