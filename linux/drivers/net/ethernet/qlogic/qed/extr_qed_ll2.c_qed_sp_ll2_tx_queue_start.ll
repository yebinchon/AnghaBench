; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_tx_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_sp_ll2_tx_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qed_ll2_info = type { i32, %struct.TYPE_6__, i32, i32, %struct.qed_ll2_tx_queue }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.qed_ll2_tx_queue = type { i32, i32, i32, i32 }
%struct.core_tx_start_ramrod_data = type { i32, i32, i8*, i8*, i8*, i32, i32, i8*, i32, i8* }
%struct.qed_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.core_tx_start_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@CORE_RAMROD_TX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@PQ_FLAGS_LB = common dso_local global i32 0, align 4
@PQ_FLAGS_OOO = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PROTOCOLID_FCOE = common dso_local global i8* null, align 8
@PROTOCOLID_ISCSI = common dso_local global i8* null, align 8
@PROTOCOLID_ROCE = common dso_local global i8* null, align 8
@PROTOCOLID_IWARP = common dso_local global i8* null, align 8
@QED_PCI_ISCSI = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown connection type: %d\0A\00", align 1
@DB_REC_WIDTH_32B = common dso_local global i32 0, align 4
@DB_REC_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_sp_ll2_tx_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_ll2_tx_queue_start(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ll2_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_ll2_tx_queue*, align 8
  %8 = alloca %struct.core_tx_start_ramrod_data*, align 8
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca %struct.qed_sp_init_data, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %5, align 8
  %14 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %15 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %19 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %18, i32 0, i32 4
  store %struct.qed_ll2_tx_queue* %19, %struct.qed_ll2_tx_queue** %7, align 8
  store %struct.core_tx_start_ramrod_data* null, %struct.core_tx_start_ramrod_data** %8, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %23 = call i32 @QED_LL2_TX_REGISTERED(%struct.qed_ll2_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %192

26:                                               ; preds = %2
  %27 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %28 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %34 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %37 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = call i32 @memset(%struct.qed_sp_init_data* %10, i32 0, i32 12)
  %40 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %41 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %50 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %52 = load i32, i32* @CORE_RAMROD_TX_QUEUE_START, align 4
  %53 = load i32, i32* @PROTOCOLID_CORE, align 4
  %54 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %51, %struct.qed_spq_entry** %9, i32 %52, i32 %53, %struct.qed_sp_init_data* %10)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %3, align 4
  br label %192

59:                                               ; preds = %38
  %60 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %61 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store %struct.core_tx_start_ramrod_data* %62, %struct.core_tx_start_ramrod_data** %8, align 8
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %64 = call i32 @qed_int_get_sp_sb_id(%struct.qed_hwfn* %63)
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %67 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load %struct.qed_ll2_tx_queue*, %struct.qed_ll2_tx_queue** %7, align 8
  %69 = getelementptr inbounds %struct.qed_ll2_tx_queue, %struct.qed_ll2_tx_queue* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %72 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %74 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le16(i32 %76)
  %78 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %79 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %81 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %84 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %86 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %89 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %91 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qed_ll2_tx_queue*, %struct.qed_ll2_tx_queue** %7, align 8
  %94 = getelementptr inbounds %struct.qed_ll2_tx_queue, %struct.qed_ll2_tx_queue* %93, i32 0, i32 2
  %95 = call i32 @qed_chain_get_pbl_phys(i32* %94)
  %96 = call i32 @DMA_REGPAIR_LE(i32 %92, i32 %95)
  %97 = load %struct.qed_ll2_tx_queue*, %struct.qed_ll2_tx_queue** %7, align 8
  %98 = getelementptr inbounds %struct.qed_ll2_tx_queue, %struct.qed_ll2_tx_queue* %97, i32 0, i32 2
  %99 = call i32 @qed_chain_get_page_cnt(i32* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call i8* @cpu_to_le16(i32 %100)
  %102 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %103 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %105 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %116 [
    i32 133, label %108
    i32 134, label %112
  ]

108:                                              ; preds = %59
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %110 = load i32, i32* @PQ_FLAGS_LB, align 4
  %111 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %109, i32 %110)
  store i32 %111, i32* %11, align 4
  br label %120

112:                                              ; preds = %59
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %114 = load i32, i32* @PQ_FLAGS_OOO, align 4
  %115 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  br label %120

116:                                              ; preds = %59
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %118 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %119 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %117, i32 %118)
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %116, %112, %108
  %121 = load i32, i32* %11, align 4
  %122 = call i8* @cpu_to_le16(i32 %121)
  %123 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %124 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %6, align 4
  switch i32 %125, label %158 [
    i32 132, label %126
    i32 131, label %130
    i32 128, label %134
    i32 130, label %138
    i32 129, label %142
  ]

126:                                              ; preds = %120
  %127 = load i8*, i8** @PROTOCOLID_FCOE, align 8
  %128 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %129 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %128, i32 0, i32 2
  store i8* %127, i8** %129, align 8
  br label %165

130:                                              ; preds = %120
  %131 = load i8*, i8** @PROTOCOLID_ISCSI, align 8
  %132 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %133 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %165

134:                                              ; preds = %120
  %135 = load i8*, i8** @PROTOCOLID_ROCE, align 8
  %136 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %137 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  br label %165

138:                                              ; preds = %120
  %139 = load i8*, i8** @PROTOCOLID_IWARP, align 8
  %140 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %141 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  br label %165

142:                                              ; preds = %120
  %143 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %144 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @QED_PCI_ISCSI, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load i8*, i8** @PROTOCOLID_ISCSI, align 8
  %151 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %152 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %157

153:                                              ; preds = %142
  %154 = load i8*, i8** @PROTOCOLID_IWARP, align 8
  %155 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %156 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %153, %149
  br label %165

158:                                              ; preds = %120
  %159 = load i8*, i8** @PROTOCOLID_ETH, align 8
  %160 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %161 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @DP_NOTICE(%struct.qed_hwfn* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %158, %157, %138, %134, %130, %126
  %166 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %167 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.core_tx_start_ramrod_data*, %struct.core_tx_start_ramrod_data** %8, align 8
  %171 = getelementptr inbounds %struct.core_tx_start_ramrod_data, %struct.core_tx_start_ramrod_data* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %173 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %174 = call i32 @qed_spq_post(%struct.qed_hwfn* %172, %struct.qed_spq_entry* %173, i32* null)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %165
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %3, align 4
  br label %192

179:                                              ; preds = %165
  %180 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %181 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.qed_ll2_tx_queue*, %struct.qed_ll2_tx_queue** %7, align 8
  %184 = getelementptr inbounds %struct.qed_ll2_tx_queue, %struct.qed_ll2_tx_queue* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.qed_ll2_tx_queue*, %struct.qed_ll2_tx_queue** %7, align 8
  %187 = getelementptr inbounds %struct.qed_ll2_tx_queue, %struct.qed_ll2_tx_queue* %186, i32 0, i32 0
  %188 = load i32, i32* @DB_REC_WIDTH_32B, align 4
  %189 = load i32, i32* @DB_REC_KERNEL, align 4
  %190 = call i32 @qed_db_recovery_add(i32 %182, i32 %185, i32* %187, i32 %188, i32 %189)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %179, %177, %57, %25
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i32 @QED_LL2_TX_REGISTERED(%struct.qed_ll2_info*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @qed_int_get_sp_sb_id(%struct.qed_hwfn*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_chain_get_pbl_phys(i32*) #1

declare dso_local i32 @qed_chain_get_page_cnt(i32*) #1

declare dso_local i32 @qed_get_cm_pq_idx(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_db_recovery_add(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
