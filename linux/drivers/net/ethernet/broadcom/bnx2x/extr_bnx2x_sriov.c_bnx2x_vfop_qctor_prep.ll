; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i64, i32, i32 }
%struct.bnx2x_vf_queue = type { i32, i32 }
%struct.bnx2x_vf_queue_construct_params = type { %struct.bnx2x_queue_setup_params, %struct.TYPE_8__ }
%struct.bnx2x_queue_setup_params = type { i64, %struct.TYPE_12__, %struct.bnx2x_rxq_setup_params, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.bnx2x_queue_init_params }
%struct.bnx2x_queue_init_params = type { i32*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i8* }
%struct.TYPE_9__ = type { i64, i8* }

@BNX2X_Q_FLG_HC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_HC_EN = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_STATS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ZERO_STATS = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TX_SWITCH = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TX_SEC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_ANTI_SPOOF = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_RX = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_TPA = common dso_local global i32 0, align 4
@BNX2X_VF_MAX_TPA_AGG_QUEUES = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vfop_qctor_prep(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_queue* %2, %struct.bnx2x_vf_queue_construct_params* %3, i64 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_virtf*, align 8
  %8 = alloca %struct.bnx2x_vf_queue*, align 8
  %9 = alloca %struct.bnx2x_vf_queue_construct_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnx2x_queue_init_params*, align 8
  %12 = alloca %struct.bnx2x_queue_setup_params*, align 8
  %13 = alloca %struct.bnx2x_rxq_setup_params*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %7, align 8
  store %struct.bnx2x_vf_queue* %2, %struct.bnx2x_vf_queue** %8, align 8
  store %struct.bnx2x_vf_queue_construct_params* %3, %struct.bnx2x_vf_queue_construct_params** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.bnx2x_vf_queue_construct_params*, %struct.bnx2x_vf_queue_construct_params** %9, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, %struct.bnx2x_vf_queue_construct_params* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.bnx2x_queue_init_params* %17, %struct.bnx2x_queue_init_params** %11, align 8
  %18 = load %struct.bnx2x_vf_queue_construct_params*, %struct.bnx2x_vf_queue_construct_params** %9, align 8
  %19 = getelementptr inbounds %struct.bnx2x_vf_queue_construct_params, %struct.bnx2x_vf_queue_construct_params* %18, i32 0, i32 0
  store %struct.bnx2x_queue_setup_params* %19, %struct.bnx2x_queue_setup_params** %12, align 8
  %20 = load i32, i32* @BNX2X_Q_FLG_HC, align 4
  %21 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %22 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %20, i64* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i32, i32* @BNX2X_Q_FLG_HC_EN, align 4
  %28 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %29 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = call i32 @__set_bit(i32 %27, i64* %30)
  br label %32

32:                                               ; preds = %26, %5
  %33 = load i32, i32* @BNX2X_Q_FLG_HC, align 4
  %34 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %35 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %33, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @BNX2X_Q_FLG_HC_EN, align 4
  %41 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %42 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @__set_bit(i32 %40, i64* %43)
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %47 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %48 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %46, i32 %49)
  %51 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %52 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %55 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %56 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %54, i32 %57)
  %59 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %60 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %63 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %11, align 8
  %66 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %70 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %73 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %76 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %77 = call i32 @vfq_stat_id(%struct.bnx2x_virtf* %75, %struct.bnx2x_vf_queue* %76)
  %78 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %79 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %82 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %85 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @BNX2X_Q_FLG_STATS, align 4
  %88 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %89 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i64* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %45
  %93 = load i32, i32* @BNX2X_Q_FLG_ZERO_STATS, align 4
  %94 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %95 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %94, i32 0, i32 0
  %96 = call i32 @__set_bit(i32 %93, i64* %95)
  br label %97

97:                                               ; preds = %92, %45
  %98 = load i32, i32* @BNX2X_Q_FLG_TX_SWITCH, align 4
  %99 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %100 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %99, i32 0, i32 0
  %101 = call i32 @__set_bit(i32 %98, i64* %100)
  %102 = load i32, i32* @BNX2X_Q_FLG_TX_SEC, align 4
  %103 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %104 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %103, i32 0, i32 0
  %105 = call i32 @__set_bit(i32 %102, i64* %104)
  %106 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %107 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %97
  %111 = load i32, i32* @BNX2X_Q_FLG_ANTI_SPOOF, align 4
  %112 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %113 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %112, i32 0, i32 0
  %114 = call i32 @__set_bit(i32 %111, i64* %113)
  br label %120

115:                                              ; preds = %97
  %116 = load i32, i32* @BNX2X_Q_FLG_ANTI_SPOOF, align 4
  %117 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %118 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %117, i32 0, i32 0
  %119 = call i32 @__clear_bit(i32 %116, i64* %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i32, i32* @BNX2X_Q_TYPE_HAS_RX, align 4
  %122 = call i64 @test_bit(i32 %121, i64* %10)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %126 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %125, i32 0, i32 2
  store %struct.bnx2x_rxq_setup_params* %126, %struct.bnx2x_rxq_setup_params** %13, align 8
  %127 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %128 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %129 = call i32 @vfq_qzone_id(%struct.bnx2x_virtf* %127, %struct.bnx2x_vf_queue* %128)
  %130 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %131 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %133 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %134 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %132, i32 %135)
  %137 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %138 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %140 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @FW_VF_HANDLE(i32 %141)
  %143 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %144 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @BNX2X_Q_FLG_TPA, align 4
  %146 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %147 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %146, i32 0, i32 0
  %148 = call i64 @test_bit(i32 %145, i64* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %124
  %151 = load i32, i32* @BNX2X_VF_MAX_TPA_AGG_QUEUES, align 4
  %152 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %13, align 8
  %153 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %150, %124
  br label %155

155:                                              ; preds = %154, %120
  %156 = load i32, i32* @BNX2X_Q_TYPE_HAS_TX, align 4
  %157 = call i64 @test_bit(i32 %156, i64* %10)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %161 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %164 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  %166 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %167 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %8, align 8
  %168 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @vf_igu_sb(%struct.bnx2x_virtf* %166, i32 %169)
  %171 = load %struct.bnx2x_queue_setup_params*, %struct.bnx2x_queue_setup_params** %12, align 8
  %172 = getelementptr inbounds %struct.bnx2x_queue_setup_params, %struct.bnx2x_queue_setup_params* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i8* %170, i8** %173, align 8
  br label %174

174:                                              ; preds = %159, %155
  ret void
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i8* @vf_igu_sb(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @vfq_stat_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local i32 @vfq_qzone_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
