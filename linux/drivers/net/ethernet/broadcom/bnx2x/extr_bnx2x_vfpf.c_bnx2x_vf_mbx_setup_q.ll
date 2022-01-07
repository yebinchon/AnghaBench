; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_setup_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_setup_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.vfpf_setup_q_tlv }
%struct.vfpf_setup_q_tlv = type { i64, i32, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_vf_queue_construct_params = type { %struct.TYPE_13__, %struct.bnx2x_queue_setup_params }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.bnx2x_queue_init_params }
%struct.bnx2x_queue_init_params = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.bnx2x_queue_setup_params = type { i64, %struct.TYPE_17__, %struct.bnx2x_rxq_setup_params, %struct.bnx2x_txq_setup_params }
%struct.TYPE_17__ = type { i32 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_txq_setup_params = type { i32, i32, i32 }
%struct.bnx2x_vf_queue = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"vf_qid %d invalid, max queue count is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VFPF_RXQ_VALID = common dso_local global i32 0, align 4
@VFPF_TXQ_VALID = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ACTIVE = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_TX = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_RX = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_setup_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_setup_q(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca %struct.vfpf_setup_q_tlv*, align 8
  %8 = alloca %struct.bnx2x_vf_queue_construct_params, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x_vf_queue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bnx2x_queue_init_params*, align 8
  %13 = alloca %struct.bnx2x_queue_setup_params*, align 8
  %14 = alloca %struct.bnx2x_txq_setup_params*, align 8
  %15 = alloca %struct.bnx2x_rxq_setup_params*, align 8
  %16 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %17 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store %struct.vfpf_setup_q_tlv* %21, %struct.vfpf_setup_q_tlv** %7, align 8
  store i32 0, i32* %9, align 4
  %22 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %23 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %26 = call i64 @vf_rxq_count(%struct.bnx2x_virtf* %25)
  %27 = icmp sge i64 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %30 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %33 = call i64 @vf_rxq_count(%struct.bnx2x_virtf* %32)
  %34 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %313

37:                                               ; preds = %3
  %38 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %39 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VFPF_RXQ_VALID, align 4
  %42 = load i32, i32* @VFPF_TXQ_VALID, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %312

46:                                               ; preds = %37
  %47 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %48 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %49 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf* %47, i64 %50)
  store %struct.bnx2x_vf_queue* %51, %struct.bnx2x_vf_queue** %10, align 8
  store i64 0, i64* %11, align 8
  %52 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %53 = call i64 @bnx2x_vfq_is_leading(%struct.bnx2x_vf_queue* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %58 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %59 = call i32 @bnx2x_leading_vfq_init(%struct.bnx2x* %56, %struct.bnx2x_virtf* %57, %struct.bnx2x_vf_queue* %58)
  br label %60

60:                                               ; preds = %55, %46
  %61 = call i32 @memset(%struct.bnx2x_vf_queue_construct_params* %8, i32 0, i32 104)
  %62 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, %struct.bnx2x_vf_queue_construct_params* %8, i32 0, i32 1
  store %struct.bnx2x_queue_setup_params* %62, %struct.bnx2x_queue_setup_params** %13, align 8
  %63 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, %struct.bnx2x_vf_queue_construct_params* %8, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store %struct.bnx2x_queue_init_params* %65, %struct.bnx2x_queue_init_params** %12, align 8
  %66 = load i32, i32* @BNX2X_Q_FLG_ACTIVE, align 4
  %67 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %68 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %67, i32 0, i32 0
  %69 = call i32 @__set_bit(i32 %66, i64* %68)
  %70 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %71 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @VFPF_TXQ_VALID, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %147

76:                                               ; preds = %60
  %77 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %78 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %77, i32 0, i32 3
  store %struct.bnx2x_txq_setup_params* %78, %struct.bnx2x_txq_setup_params** %14, align 8
  %79 = load i32, i32* @BNX2X_Q_TYPE_HAS_TX, align 4
  %80 = call i32 @__set_bit(i32 %79, i64* %11)
  %81 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %82 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %86 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %88 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %92 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %95 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %99 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  %101 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %102 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %103 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %107 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %101, i32 %105, i64* %108)
  %110 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %111 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %112 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %116 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %115, i32 0, i32 0
  %117 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %110, i32 %114, i64* %116)
  %118 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %119 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %14, align 8
  %123 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %125 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %14, align 8
  %129 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %131 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.bnx2x_txq_setup_params*, %struct.bnx2x_txq_setup_params** %14, align 8
  %135 = getelementptr inbounds %struct.bnx2x_txq_setup_params, %struct.bnx2x_txq_setup_params* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %137 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %138 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %139 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %140 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %141 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %144 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @bnx2x_vfop_qctor_dump_tx(%struct.bnx2x* %136, %struct.bnx2x_virtf* %137, %struct.bnx2x_queue_init_params* %138, %struct.bnx2x_queue_setup_params* %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %76, %60
  %148 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %149 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @VFPF_RXQ_VALID, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %296

154:                                              ; preds = %147
  %155 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %156 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %155, i32 0, i32 2
  store %struct.bnx2x_rxq_setup_params* %156, %struct.bnx2x_rxq_setup_params** %15, align 8
  %157 = load i32, i32* @BNX2X_Q_TYPE_HAS_RX, align 4
  %158 = call i32 @__set_bit(i32 %157, i64* %11)
  %159 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %160 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 14
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %164 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %166 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %170 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 4
  %172 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %173 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %177 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 8
  %179 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %180 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %181 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %185 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %179, i32 %183, i64* %186)
  %188 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %189 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %190 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %194 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %193, i32 0, i32 0
  %195 = call i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x* %188, i32 %192, i64* %194)
  %196 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %197 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 11
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %201 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 8
  %203 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %204 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %208 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %207, i32 0, i32 11
  store i32 %206, i32* %208, align 4
  %209 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %210 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %214 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %213, i32 0, i32 10
  store i32 %212, i32* %214, align 4
  %215 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %216 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %220 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %219, i32 0, i32 9
  store i32 %218, i32* %220, align 4
  %221 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %222 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %226 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 4
  %227 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %228 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %232 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %231, i32 0, i32 7
  store i32 %230, i32* %232, align 4
  %233 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %234 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %238 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 4
  %239 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %240 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %244 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 4
  %245 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %246 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %250 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 4
  %251 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %252 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %256 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 4
  %257 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %258 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %262 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 4
  %263 = load %struct.vfpf_setup_q_tlv*, %struct.vfpf_setup_q_tlv** %7, align 8
  %264 = getelementptr inbounds %struct.vfpf_setup_q_tlv, %struct.vfpf_setup_q_tlv* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %268 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  %269 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %270 = call i64 @bnx2x_vfq_is_leading(%struct.bnx2x_vf_queue* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %284

272:                                              ; preds = %154
  %273 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %274 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @FW_VF_HANDLE(i32 %275)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %15, align 8
  %279 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* @BNX2X_Q_FLG_MCAST, align 4
  %281 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %282 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %281, i32 0, i32 0
  %283 = call i32 @__set_bit(i32 %280, i64* %282)
  br label %284

284:                                              ; preds = %272, %154
  %285 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %286 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %287 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %12, align 8
  %288 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %13, align 8
  %289 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %290 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %293 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @bnx2x_vfop_qctor_dump_rx(%struct.bnx2x* %285, %struct.bnx2x_virtf* %286, %struct.bnx2x_queue_init_params* %287, %struct.bnx2x_queue_setup_params* %288, i32 %291, i32 %294)
  br label %296

296:                                              ; preds = %284, %147
  %297 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %298 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %299 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %300 = load i64, i64* %11, align 8
  %301 = call i32 @bnx2x_vfop_qctor_prep(%struct.bnx2x* %297, %struct.bnx2x_virtf* %298, %struct.bnx2x_vf_queue* %299, %struct.bnx2x_vf_queue_construct_params* %8, i64 %300)
  %302 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %303 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %304 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %10, align 8
  %305 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @bnx2x_vf_queue_setup(%struct.bnx2x* %302, %struct.bnx2x_virtf* %303, i32 %306, %struct.bnx2x_vf_queue_construct_params* %8)
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %296
  br label %313

311:                                              ; preds = %296
  br label %312

312:                                              ; preds = %311, %37
  br label %313

313:                                              ; preds = %312, %310, %28
  %314 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %315 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %316 = load i32, i32* %9, align 4
  %317 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %314, %struct.bnx2x_virtf* %315, i32 %316)
  ret void
}

declare dso_local i64 @vf_rxq_count(%struct.bnx2x_virtf*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, i64) #1

declare dso_local %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf*, i64) #1

declare dso_local i64 @bnx2x_vfq_is_leading(%struct.bnx2x_vf_queue*) #1

declare dso_local i32 @bnx2x_leading_vfq_init(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @memset(%struct.bnx2x_vf_queue_construct_params*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_vf_mbx_set_q_flags(%struct.bnx2x*, i32, i64*) #1

declare dso_local i32 @bnx2x_vfop_qctor_dump_tx(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_setup_params*, i32, i32) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @bnx2x_vfop_qctor_dump_rx(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_setup_params*, i32, i32) #1

declare dso_local i32 @bnx2x_vfop_qctor_prep(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue_construct_params*, i64) #1

declare dso_local i32 @bnx2x_vf_queue_setup(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, %struct.bnx2x_vf_queue_construct_params*) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
