; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_txqsq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_txqsq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wq_cyc = type { i32* }
%struct.mlx5e_channel = type { i64, i32, %struct.TYPE_11__*, i32, i32, i32, %struct.mlx5_core_dev* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.mlx5_core_dev = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_params = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.mlx5e_sq_param = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.mlx5e_txqsq = type { i64, i32, i32, %struct.TYPE_12__, i32, i32, i32, i32*, i32, i32, i32, %struct.mlx5e_channel*, i32, i32*, i32, i32, %struct.mlx5_wq_cyc }
%struct.TYPE_12__ = type { i32, i32 }

@sqc = common dso_local global i32 0, align 4
@wq = common dso_local global %struct.mlx5_wq_cyc* null, align 8
@MLX5E_SQ_STOP_ROOM = common dso_local global i32 0, align 4
@mlx5e_tx_err_cqe_work = common dso_local global i32 0, align 4
@wqe_vlan_insert = common dso_local global i32 0, align 4
@MLX5E_SQ_STATE_VLAN_NEED_L2_INLINE = common dso_local global i32 0, align 4
@MLX5E_SQ_STATE_IPSEC = common dso_local global i32 0, align 4
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@mlx5e_tx_dim_work = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@MLX5E_SQ_STATE_TLS = common dso_local global i32 0, align 4
@MLX5E_SQ_TLS_ROOM = common dso_local global i64 0, align 8
@TLS_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, i32, %struct.mlx5e_params*, %struct.mlx5e_sq_param*, %struct.mlx5e_txqsq*, i32)* @mlx5e_alloc_txqsq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_txqsq(%struct.mlx5e_channel* %0, i32 %1, %struct.mlx5e_params* %2, %struct.mlx5e_sq_param* %3, %struct.mlx5e_txqsq* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_params*, align 8
  %11 = alloca %struct.mlx5e_sq_param*, align 8
  %12 = alloca %struct.mlx5e_txqsq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.mlx5_core_dev*, align 8
  %16 = alloca %struct.mlx5_wq_cyc*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx5e_params* %2, %struct.mlx5e_params** %10, align 8
  store %struct.mlx5e_sq_param* %3, %struct.mlx5e_sq_param** %11, align 8
  store %struct.mlx5e_txqsq* %4, %struct.mlx5e_txqsq** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @sqc, align 4
  %19 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %11, align 8
  %20 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** @wq, align 8
  %23 = ptrtoint %struct.mlx5_wq_cyc* %22 to i32
  %24 = call i8* @MLX5_ADDR_OF(i32 %18, i32 %21, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %26 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %25, i32 0, i32 6
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %26, align 8
  store %struct.mlx5_core_dev* %27, %struct.mlx5_core_dev** %15, align 8
  %28 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %29 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %28, i32 0, i32 16
  store %struct.mlx5_wq_cyc* %29, %struct.mlx5_wq_cyc** %16, align 8
  %30 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %34 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %33, i32 0, i32 15
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %39 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %38, i32 0, i32 14
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %41 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %40, i32 0, i32 1
  %42 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %43 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %42, i32 0, i32 13
  store i32* %41, i32** %43, align 8
  %44 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %48 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %50 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %51 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %50, i32 0, i32 11
  store %struct.mlx5e_channel* %49, %struct.mlx5e_channel** %51, align 8
  %52 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %53 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %56 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %59 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %61 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %66 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %68 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %71 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %73 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %74 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params* %72, i32 %75)
  %77 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %78 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %80 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %79, i32 0, i32 2
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %85 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %94 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %93, i32 0, i32 7
  store i32* %92, i32** %94, align 8
  %95 = load i32, i32* @MLX5E_SQ_STOP_ROOM, align 4
  %96 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %97 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  %98 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %99 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %98, i32 0, i32 6
  %100 = load i32, i32* @mlx5e_tx_err_cqe_work, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %103 = load i32, i32* @wqe_vlan_insert, align 4
  %104 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %6
  %107 = load i32, i32* @MLX5E_SQ_STATE_VLAN_NEED_L2_INLINE, align 4
  %108 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %109 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %108, i32 0, i32 5
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %6
  %112 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %113 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %112, i32 0, i32 2
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @MLX5_IPSEC_DEV(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i32, i32* @MLX5E_SQ_STATE_IPSEC, align 4
  %121 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %122 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %121, i32 0, i32 5
  %123 = call i32 @set_bit(i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %119, %111
  %125 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %126 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @cpu_to_node(i32 %127)
  %129 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %11, align 8
  %130 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %133 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %11, align 8
  %134 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %133, i32 0, i32 0
  %135 = load i8*, i8** %14, align 8
  %136 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %16, align 8
  %137 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %138 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %137, i32 0, i32 2
  %139 = call i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev* %132, %struct.TYPE_14__* %134, i8* %135, %struct.mlx5_wq_cyc* %136, i32* %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %124
  %143 = load i32, i32* %17, align 4
  store i32 %143, i32* %7, align 4
  br label %179

144:                                              ; preds = %124
  %145 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %16, align 8
  %146 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* @MLX5_SND_DBR, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %16, align 8
  %151 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %150, i32 0, i32 0
  store i32* %149, i32** %151, align 8
  %152 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %153 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %154 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @cpu_to_node(i32 %155)
  %157 = call i32 @mlx5e_alloc_txqsq_db(%struct.mlx5e_txqsq* %152, i32 %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  br label %174

161:                                              ; preds = %144
  %162 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %163 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load i32, i32* @mlx5e_tx_dim_work, align 4
  %166 = call i32 @INIT_WORK(i32* %164, i32 %165)
  %167 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %168 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %172 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  store i32 0, i32* %7, align 4
  br label %179

174:                                              ; preds = %160
  %175 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %12, align 8
  %176 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %175, i32 0, i32 2
  %177 = call i32 @mlx5_wq_destroy(i32* %176)
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %174, %161, %142
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5E_SW2HW_MTU(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @MLX5_IPSEC_DEV(i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev*, %struct.TYPE_14__*, i8*, %struct.mlx5_wq_cyc*, i32*) #1

declare dso_local i32 @mlx5e_alloc_txqsq_db(%struct.mlx5e_txqsq*, i32) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
