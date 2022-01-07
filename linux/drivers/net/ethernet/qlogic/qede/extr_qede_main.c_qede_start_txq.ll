; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_start_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_start_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32, i32, %struct.qed_txq_start_ret_params*, i32, i32, %struct.qed_txq_start_ret_params*)*, %struct.TYPE_10__* }
%struct.qed_txq_start_ret_params = type { i64, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i32 (i32, i32, %struct.TYPE_12__*, i32, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.qede_fastpath = type { %struct.TYPE_8__* }
%struct.qede_tx_queue = type { %struct.TYPE_12__, i32, i32*, i32, i32, i32, i64, i32 }
%struct.qed_queue_start_common_params = type { i64, i32, i32, i32, %struct.TYPE_8__*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Start TXQ #%d failed %d\0A\00", align 1
@ETH_DB_DATA_DEST = common dso_local global i32 0, align 4
@DB_DEST_XCM = common dso_local global i32 0, align 4
@ETH_DB_DATA_AGG_CMD = common dso_local global i32 0, align 4
@DB_AGG_CMD_SET = common dso_local global i32 0, align 4
@ETH_DB_DATA_AGG_VAL_SEL = common dso_local global i32 0, align 4
@DQ_XCM_ETH_TX_BD_PROD_CMD = common dso_local global i32 0, align 4
@DQ_XCM_ETH_DQ_CF_CMD = common dso_local global i32 0, align 4
@DB_REC_WIDTH_32B = common dso_local global i32 0, align 4
@DB_REC_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.qede_fastpath*, %struct.qede_tx_queue*, i32, i64)* @qede_start_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_start_txq(%struct.qede_dev* %0, %struct.qede_fastpath* %1, %struct.qede_tx_queue* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qede_dev*, align 8
  %8 = alloca %struct.qede_fastpath*, align 8
  %9 = alloca %struct.qede_tx_queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qed_queue_start_common_params, align 8
  %15 = alloca %struct.qed_txq_start_ret_params, align 8
  %16 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %7, align 8
  store %struct.qede_fastpath* %1, %struct.qede_fastpath** %8, align 8
  store %struct.qede_tx_queue* %2, %struct.qede_tx_queue** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %17 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %18 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %17, i32 0, i32 7
  %19 = call i32 @qed_chain_get_pbl_phys(i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %21 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %20, i32 0, i32 7
  %22 = call i32 @qed_chain_get_page_cnt(i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = bitcast %struct.qed_queue_start_common_params* %14 to %struct.qed_txq_start_ret_params*
  %24 = call i32 @memset(%struct.qed_txq_start_ret_params* %23, i32 0, i32 40)
  %25 = call i32 @memset(%struct.qed_txq_start_ret_params* %15, i32 0, i32 40)
  %26 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %27 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %32 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %33 = call i32 @QEDE_TXQ_XDP_TO_IDX(%struct.qede_dev* %31, %struct.qede_tx_queue* %32)
  %34 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %14, i32 0, i32 5
  store i32 %33, i32* %34, align 8
  br label %40

35:                                               ; preds = %5
  %36 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %37 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %14, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.qede_fastpath*, %struct.qede_fastpath** %8, align 8
  %42 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %14, i32 0, i32 4
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %44, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %14, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %48 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.qed_queue_start_common_params, %struct.qed_queue_start_common_params* %14, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %52 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32 (i32, i32, %struct.qed_txq_start_ret_params*, i32, i32, %struct.qed_txq_start_ret_params*)*, i32 (i32, i32, %struct.qed_txq_start_ret_params*, i32, i32, %struct.qed_txq_start_ret_params*)** %54, align 8
  %56 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %57 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = bitcast %struct.qed_queue_start_common_params* %14 to %struct.qed_txq_start_ret_params*
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 %55(i32 %58, i32 %59, %struct.qed_txq_start_ret_params* %60, i32 %61, i32 %62, %struct.qed_txq_start_ret_params* %15)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %40
  %67 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %68 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %69 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @DP_ERR(%struct.qede_dev* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %6, align 4
  br label %142

74:                                               ; preds = %40
  %75 = getelementptr inbounds %struct.qed_txq_start_ret_params, %struct.qed_txq_start_ret_params* %15, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %78 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.qed_txq_start_ret_params, %struct.qed_txq_start_ret_params* %15, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %82 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.qede_fastpath*, %struct.qede_fastpath** %8, align 8
  %84 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %93 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %95 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ETH_DB_DATA_DEST, align 4
  %100 = load i32, i32* @DB_DEST_XCM, align 4
  %101 = call i32 @SET_FIELD(i32 %98, i32 %99, i32 %100)
  %102 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %103 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ETH_DB_DATA_AGG_CMD, align 4
  %108 = load i32, i32* @DB_AGG_CMD_SET, align 4
  %109 = call i32 @SET_FIELD(i32 %106, i32 %107, i32 %108)
  %110 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %111 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ETH_DB_DATA_AGG_VAL_SEL, align 4
  %116 = load i32, i32* @DQ_XCM_ETH_TX_BD_PROD_CMD, align 4
  %117 = call i32 @SET_FIELD(i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* @DQ_XCM_ETH_DQ_CF_CMD, align 4
  %119 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %120 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %124 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32 (i32, i32, %struct.TYPE_12__*, i32, i32)*, i32 (i32, i32, %struct.TYPE_12__*, i32, i32)** %128, align 8
  %130 = load %struct.qede_dev*, %struct.qede_dev** %7, align 8
  %131 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %134 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %9, align 8
  %137 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %136, i32 0, i32 0
  %138 = load i32, i32* @DB_REC_WIDTH_32B, align 4
  %139 = load i32, i32* @DB_REC_KERNEL, align 4
  %140 = call i32 %129(i32 %132, i32 %135, %struct.TYPE_12__* %137, i32 %138, i32 %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %74, %66
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @qed_chain_get_pbl_phys(i32*) #1

declare dso_local i32 @qed_chain_get_page_cnt(i32*) #1

declare dso_local i32 @memset(%struct.qed_txq_start_ret_params*, i32, i32) #1

declare dso_local i32 @QEDE_TXQ_XDP_TO_IDX(%struct.qede_dev*, %struct.qede_tx_queue*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
