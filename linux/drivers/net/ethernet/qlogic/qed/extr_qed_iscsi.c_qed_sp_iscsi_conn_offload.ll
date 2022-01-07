; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_conn_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_conn_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qed_iscsi_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.qed_spq_comp_cb = type { i32 }
%struct.iscsi_spe_conn_offload = type { %struct.tcp_offload_params, %struct.TYPE_8__, i8*, i8*, %struct.TYPE_7__ }
%struct.tcp_offload_params = type { i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8**, i8**, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, i8*, i32, i8*, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.tcp_offload_params_opt2 = type { i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8**, i8**, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.iscsi_spe_conn_offload }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }
%struct.iscsi_spe_conn_offload_option2 = type { %struct.tcp_offload_params_opt2 }

@ISCSI_RAMROD_CMD_ID_OFFLOAD_CONN = common dso_local global i32 0, align 4
@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@PQ_FLAGS_ACK = common dso_local global i32 0, align 4
@ISCSI_SLOW_PATH_HDR_LAYER_CODE = common dso_local global i32 0, align 4
@ISCSI_CONN_OFFLOAD_PARAMS_TCP_ON_CHIP_1B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iscsi_conn*, i32, %struct.qed_spq_comp_cb*)* @qed_sp_iscsi_conn_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_iscsi_conn_offload(%struct.qed_hwfn* %0, %struct.qed_iscsi_conn* %1, i32 %2, %struct.qed_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_iscsi_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_cb*, align 8
  %10 = alloca %struct.iscsi_spe_conn_offload*, align 8
  %11 = alloca %struct.tcp_offload_params_opt2*, align 8
  %12 = alloca %struct.tcp_offload_params*, align 8
  %13 = alloca %struct.qed_spq_entry*, align 8
  %14 = alloca %struct.qed_sp_init_data, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_iscsi_conn* %1, %struct.qed_iscsi_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_spq_comp_cb* %3, %struct.qed_spq_comp_cb** %9, align 8
  store %struct.iscsi_spe_conn_offload* null, %struct.iscsi_spe_conn_offload** %10, align 8
  store %struct.tcp_offload_params_opt2* null, %struct.tcp_offload_params_opt2** %11, align 8
  store %struct.tcp_offload_params* null, %struct.tcp_offload_params** %12, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %13, align 8
  store i32 0, i32* %19, align 4
  %24 = call i32 @memset(%struct.qed_sp_init_data* %14, i32 0, i32 24)
  %25 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %26 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %25, i32 0, i32 54
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %14, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %14, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %14, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %9, align 8
  %37 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %14, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %36, %struct.qed_spq_comp_cb** %37, align 8
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %39 = load i32, i32* @ISCSI_RAMROD_CMD_ID_OFFLOAD_CONN, align 4
  %40 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %41 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %38, %struct.qed_spq_entry** %13, i32 %39, i32 %40, %struct.qed_sp_init_data* %14)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %5, align 4
  br label %678

46:                                               ; preds = %4
  %47 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %48 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.iscsi_spe_conn_offload* %49, %struct.iscsi_spe_conn_offload** %10, align 8
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %51 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %52 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %50, i32 %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %56 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %55, i32 0, i32 58
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %18, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %60 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 9
  store i8* %58, i8** %61, align 8
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %63 = load i32, i32* @PQ_FLAGS_ACK, align 4
  %64 = call i32 @qed_get_cm_pq_idx(%struct.qed_hwfn* %62, i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = call i8* @cpu_to_le16(i32 %65)
  %67 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %68 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %67, i32 0, i32 57
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %18, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %72 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  store i8* %70, i8** %73, align 8
  %74 = load i32, i32* @ISCSI_RAMROD_CMD_ID_OFFLOAD_CONN, align 4
  %75 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %76 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %79 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ISCSI_SLOW_PATH_HDR_LAYER_CODE, align 4
  %83 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %84 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %83, i32 0, i32 56
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @SET_FIELD(i32 %81, i32 %82, i32 %85)
  %87 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %88 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %87, i32 0, i32 55
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le16(i32 %89)
  %91 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %92 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %94 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %93, i32 0, i32 54
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %98 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %100 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %104 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %103, i32 0, i32 53
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DMA_REGPAIR_LE(i32 %102, i32 %105)
  %107 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %108 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %107, i32 0, i32 52
  %109 = call i32 @qed_chain_get_pbl_phys(i32* %108)
  store i32 %109, i32* %15, align 4
  %110 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %111 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @DMA_REGPAIR_LE(i32 %113, i32 %114)
  %116 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %117 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %116, i32 0, i32 51
  %118 = call i32 @qed_chain_get_pbl_phys(i32* %117)
  store i32 %118, i32* %16, align 4
  %119 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %120 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @DMA_REGPAIR_LE(i32 %122, i32 %123)
  %125 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %126 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %125, i32 0, i32 50
  %127 = call i32 @qed_chain_get_pbl_phys(i32* %126)
  store i32 %127, i32* %17, align 4
  %128 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %129 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @DMA_REGPAIR_LE(i32 %131, i32 %132)
  %134 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %135 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %134, i32 0, i32 49
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %139 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  store i8* %137, i8** %140, align 8
  %141 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %142 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %141, i32 0, i32 48
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %145 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %148 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %147, i32 0, i32 47
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %151 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  %153 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %154 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %153, i32 0, i32 46
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %158 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  %160 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %161 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ISCSI_CONN_OFFLOAD_PARAMS_TCP_ON_CHIP_1B, align 4
  %165 = call i32 @GET_FIELD(i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %481, label %167

167:                                              ; preds = %46
  %168 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %169 = getelementptr inbounds %struct.iscsi_spe_conn_offload, %struct.iscsi_spe_conn_offload* %168, i32 0, i32 0
  store %struct.tcp_offload_params* %169, %struct.tcp_offload_params** %12, align 8
  %170 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %171 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %170, i32 0, i32 21
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i32*
  store i32* %173, i32** %22, align 8
  %174 = load i32*, i32** %22, align 8
  %175 = call i32 @get_unaligned(i32* %174)
  %176 = call i8* @swab16(i32 %175)
  %177 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %178 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %177, i32 0, i32 47
  store i8* %176, i8** %178, align 8
  %179 = load i32*, i32** %22, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = call i32 @get_unaligned(i32* %180)
  %182 = call i8* @swab16(i32 %181)
  %183 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %184 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %183, i32 0, i32 46
  store i8* %182, i8** %184, align 8
  %185 = load i32*, i32** %22, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  %187 = call i32 @get_unaligned(i32* %186)
  %188 = call i8* @swab16(i32 %187)
  %189 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %190 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %189, i32 0, i32 45
  store i8* %188, i8** %190, align 8
  %191 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %192 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %191, i32 0, i32 20
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %22, align 8
  %195 = load i32*, i32** %22, align 8
  %196 = call i32 @get_unaligned(i32* %195)
  %197 = call i8* @swab16(i32 %196)
  %198 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %199 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %198, i32 0, i32 44
  store i8* %197, i8** %199, align 8
  %200 = load i32*, i32** %22, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = call i32 @get_unaligned(i32* %201)
  %203 = call i8* @swab16(i32 %202)
  %204 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %205 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %204, i32 0, i32 43
  store i8* %203, i8** %205, align 8
  %206 = load i32*, i32** %22, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = call i32 @get_unaligned(i32* %207)
  %209 = call i8* @swab16(i32 %208)
  %210 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %211 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %210, i32 0, i32 42
  store i8* %209, i8** %211, align 8
  %212 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %213 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %212, i32 0, i32 19
  %214 = load i32, i32* %213, align 8
  %215 = call i8* @cpu_to_le16(i32 %214)
  %216 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %217 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %216, i32 0, i32 41
  store i8* %215, i8** %217, align 8
  %218 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %219 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %218, i32 0, i32 18
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @cpu_to_le16(i32 %220)
  %222 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %223 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %222, i32 0, i32 40
  store i8* %221, i8** %223, align 8
  %224 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %225 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %224, i32 0, i32 17
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %228 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %227, i32 0, i32 39
  store i32 %226, i32* %228, align 8
  store i32 0, i32* %23, align 4
  br label %229

229:                                              ; preds = %263, %167
  %230 = load i32, i32* %23, align 4
  %231 = icmp slt i32 %230, 4
  br i1 %231, label %232, label %266

232:                                              ; preds = %229
  %233 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %234 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %233, i32 0, i32 16
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %23, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %20, align 4
  %240 = load i32, i32* %20, align 4
  %241 = call i8* @cpu_to_le32(i32 %240)
  %242 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %243 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %242, i32 0, i32 38
  %244 = load i8**, i8*** %243, align 8
  %245 = load i32, i32* %23, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  store i8* %241, i8** %247, align 8
  %248 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %249 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %248, i32 0, i32 15
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* %20, align 4
  %256 = call i8* @cpu_to_le32(i32 %255)
  %257 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %258 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %257, i32 0, i32 37
  %259 = load i8**, i8*** %258, align 8
  %260 = load i32, i32* %23, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  store i8* %256, i8** %262, align 8
  br label %263

263:                                              ; preds = %232
  %264 = load i32, i32* %23, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %23, align 4
  br label %229

266:                                              ; preds = %229
  %267 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %268 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %267, i32 0, i32 45
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %271 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %270, i32 0, i32 36
  store i32 %269, i32* %271, align 4
  %272 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %273 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %272, i32 0, i32 44
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %276 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %275, i32 0, i32 35
  store i32 %274, i32* %276, align 8
  %277 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %278 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %277, i32 0, i32 43
  %279 = load i32, i32* %278, align 4
  %280 = call i8* @cpu_to_le32(i32 %279)
  %281 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %282 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %281, i32 0, i32 34
  store i8* %280, i8** %282, align 8
  %283 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %284 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %283, i32 0, i32 42
  %285 = load i32, i32* %284, align 8
  %286 = call i8* @cpu_to_le32(i32 %285)
  %287 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %288 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %287, i32 0, i32 33
  store i8* %286, i8** %288, align 8
  %289 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %290 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %289, i32 0, i32 41
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @cpu_to_le32(i32 %291)
  %293 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %294 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %293, i32 0, i32 32
  store i8* %292, i8** %294, align 8
  %295 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %296 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %295, i32 0, i32 40
  %297 = load i32, i32* %296, align 8
  %298 = call i8* @cpu_to_le32(i32 %297)
  %299 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %300 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %299, i32 0, i32 31
  store i8* %298, i8** %300, align 8
  %301 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %302 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %301, i32 0, i32 39
  %303 = load i32, i32* %302, align 4
  %304 = call i8* @cpu_to_le32(i32 %303)
  %305 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %306 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %305, i32 0, i32 30
  store i8* %304, i8** %306, align 8
  %307 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %308 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %307, i32 0, i32 38
  %309 = load i32, i32* %308, align 8
  %310 = call i8* @cpu_to_le32(i32 %309)
  %311 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %312 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %311, i32 0, i32 29
  store i8* %310, i8** %312, align 8
  %313 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %314 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %313, i32 0, i32 37
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @cpu_to_le32(i32 %315)
  %317 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %318 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %317, i32 0, i32 28
  store i8* %316, i8** %318, align 8
  %319 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %320 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 8
  %322 = call i8* @cpu_to_le32(i32 %321)
  %323 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %324 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %323, i32 0, i32 27
  store i8* %322, i8** %324, align 8
  %325 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %326 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %325, i32 0, i32 36
  %327 = load i32, i32* %326, align 8
  %328 = call i8* @cpu_to_le32(i32 %327)
  %329 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %330 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %329, i32 0, i32 26
  store i8* %328, i8** %330, align 8
  %331 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %332 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %331, i32 0, i32 35
  %333 = load i32, i32* %332, align 4
  %334 = call i8* @cpu_to_le16(i32 %333)
  %335 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %336 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %335, i32 0, i32 25
  store i8* %334, i8** %336, align 8
  %337 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %338 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %337, i32 0, i32 34
  %339 = load i32, i32* %338, align 8
  %340 = call i8* @cpu_to_le16(i32 %339)
  %341 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %342 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %341, i32 0, i32 24
  store i8* %340, i8** %342, align 8
  %343 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %344 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %343, i32 0, i32 33
  %345 = load i32, i32* %344, align 4
  %346 = call i8* @cpu_to_le32(i32 %345)
  %347 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %348 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %347, i32 0, i32 23
  store i8* %346, i8** %348, align 8
  %349 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %350 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %349, i32 0, i32 32
  %351 = load i32, i32* %350, align 8
  %352 = call i8* @cpu_to_le32(i32 %351)
  %353 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %354 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %353, i32 0, i32 22
  store i8* %352, i8** %354, align 8
  %355 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %356 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %355, i32 0, i32 31
  %357 = load i32, i32* %356, align 4
  %358 = call i8* @cpu_to_le32(i32 %357)
  %359 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %360 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %359, i32 0, i32 21
  store i8* %358, i8** %360, align 8
  %361 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %362 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %361, i32 0, i32 30
  %363 = load i32, i32* %362, align 8
  store i32 %363, i32* %20, align 4
  %364 = load i32, i32* %20, align 4
  %365 = call i8* @cpu_to_le32(i32 %364)
  %366 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %367 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %366, i32 0, i32 20
  store i8* %365, i8** %367, align 8
  %368 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %369 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %368, i32 0, i32 29
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %20, align 4
  %371 = load i32, i32* %20, align 4
  %372 = call i8* @cpu_to_le32(i32 %371)
  %373 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %374 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %373, i32 0, i32 19
  store i8* %372, i8** %374, align 8
  %375 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %376 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %375, i32 0, i32 28
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %379 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %378, i32 0, i32 18
  store i32 %377, i32* %379, align 4
  %380 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %381 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %380, i32 0, i32 27
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %384 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %383, i32 0, i32 17
  store i32 %382, i32* %384, align 8
  %385 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %386 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %389 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %388, i32 0, i32 16
  store i32 %387, i32* %389, align 4
  %390 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %391 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %390, i32 0, i32 26
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %394 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %393, i32 0, i32 15
  store i32 %392, i32* %394, align 8
  %395 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %396 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %395, i32 0, i32 14
  %397 = load i32, i32* %396, align 8
  %398 = call i8* @cpu_to_le32(i32 %397)
  %399 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %400 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %399, i32 0, i32 14
  store i8* %398, i8** %400, align 8
  %401 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %402 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = call i8* @cpu_to_le32(i32 %403)
  %405 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %406 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %405, i32 0, i32 13
  store i8* %404, i8** %406, align 8
  %407 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %408 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i8* @cpu_to_le32(i32 %409)
  %411 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %412 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %411, i32 0, i32 12
  store i8* %410, i8** %412, align 8
  %413 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %414 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = call i8* @cpu_to_le32(i32 %415)
  %417 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %418 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %417, i32 0, i32 11
  store i8* %416, i8** %418, align 8
  %419 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %420 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %419, i32 0, i32 25
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %20, align 4
  %422 = load i32, i32* %20, align 4
  %423 = call i8* @cpu_to_le32(i32 %422)
  %424 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %425 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %424, i32 0, i32 10
  store i8* %423, i8** %425, align 8
  %426 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %427 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %426, i32 0, i32 13
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %430 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %429, i32 0, i32 9
  store i32 %428, i32* %430, align 4
  %431 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %432 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %431, i32 0, i32 12
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %435 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %434, i32 0, i32 8
  store i32 %433, i32* %435, align 8
  %436 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %437 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %436, i32 0, i32 11
  %438 = load i32, i32* %437, align 4
  %439 = call i8* @cpu_to_le16(i32 %438)
  %440 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %441 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %440, i32 0, i32 7
  store i8* %439, i8** %441, align 8
  %442 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %443 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %442, i32 0, i32 10
  %444 = load i32, i32* %443, align 8
  %445 = call i8* @cpu_to_le16(i32 %444)
  %446 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %447 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %446, i32 0, i32 6
  store i8* %445, i8** %447, align 8
  %448 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %449 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %448, i32 0, i32 9
  %450 = load i32, i32* %449, align 4
  %451 = call i8* @cpu_to_le16(i32 %450)
  %452 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %453 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %452, i32 0, i32 5
  store i8* %451, i8** %453, align 8
  %454 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %455 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %454, i32 0, i32 24
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %458 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %457, i32 0, i32 4
  store i32 %456, i32* %458, align 4
  %459 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %460 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %459, i32 0, i32 8
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %463 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %462, i32 0, i32 3
  store i32 %461, i32* %463, align 8
  %464 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %465 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %464, i32 0, i32 23
  %466 = load i32, i32* %465, align 4
  store i32 %466, i32* %21, align 4
  %467 = load i32, i32* %21, align 4
  %468 = call i8* @cpu_to_le16(i32 %467)
  %469 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %470 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %469, i32 0, i32 2
  store i8* %468, i8** %470, align 8
  %471 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %472 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %471, i32 0, i32 22
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %475 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %474, i32 0, i32 1
  store i32 %473, i32* %475, align 4
  %476 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %477 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %476, i32 0, i32 7
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.tcp_offload_params*, %struct.tcp_offload_params** %12, align 8
  %480 = getelementptr inbounds %struct.tcp_offload_params, %struct.tcp_offload_params* %479, i32 0, i32 0
  store i32 %478, i32* %480, align 8
  br label %674

481:                                              ; preds = %46
  %482 = load %struct.iscsi_spe_conn_offload*, %struct.iscsi_spe_conn_offload** %10, align 8
  %483 = bitcast %struct.iscsi_spe_conn_offload* %482 to %struct.iscsi_spe_conn_offload_option2*
  %484 = getelementptr inbounds %struct.iscsi_spe_conn_offload_option2, %struct.iscsi_spe_conn_offload_option2* %483, i32 0, i32 0
  store %struct.tcp_offload_params_opt2* %484, %struct.tcp_offload_params_opt2** %11, align 8
  %485 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %486 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %485, i32 0, i32 21
  %487 = load i64, i64* %486, align 8
  %488 = inttoptr i64 %487 to i32*
  store i32* %488, i32** %22, align 8
  %489 = load i32*, i32** %22, align 8
  %490 = call i32 @get_unaligned(i32* %489)
  %491 = call i8* @swab16(i32 %490)
  %492 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %493 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %492, i32 0, i32 26
  store i8* %491, i8** %493, align 8
  %494 = load i32*, i32** %22, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  %496 = call i32 @get_unaligned(i32* %495)
  %497 = call i8* @swab16(i32 %496)
  %498 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %499 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %498, i32 0, i32 25
  store i8* %497, i8** %499, align 8
  %500 = load i32*, i32** %22, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 2
  %502 = call i32 @get_unaligned(i32* %501)
  %503 = call i8* @swab16(i32 %502)
  %504 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %505 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %504, i32 0, i32 24
  store i8* %503, i8** %505, align 8
  %506 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %507 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %506, i32 0, i32 20
  %508 = load i64, i64* %507, align 8
  %509 = inttoptr i64 %508 to i32*
  store i32* %509, i32** %22, align 8
  %510 = load i32*, i32** %22, align 8
  %511 = call i32 @get_unaligned(i32* %510)
  %512 = call i8* @swab16(i32 %511)
  %513 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %514 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %513, i32 0, i32 23
  store i8* %512, i8** %514, align 8
  %515 = load i32*, i32** %22, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 1
  %517 = call i32 @get_unaligned(i32* %516)
  %518 = call i8* @swab16(i32 %517)
  %519 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %520 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %519, i32 0, i32 22
  store i8* %518, i8** %520, align 8
  %521 = load i32*, i32** %22, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 2
  %523 = call i32 @get_unaligned(i32* %522)
  %524 = call i8* @swab16(i32 %523)
  %525 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %526 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %525, i32 0, i32 21
  store i8* %524, i8** %526, align 8
  %527 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %528 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %527, i32 0, i32 19
  %529 = load i32, i32* %528, align 8
  %530 = call i8* @cpu_to_le16(i32 %529)
  %531 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %532 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %531, i32 0, i32 20
  store i8* %530, i8** %532, align 8
  %533 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %534 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %533, i32 0, i32 18
  %535 = load i32, i32* %534, align 4
  %536 = call i8* @cpu_to_le16(i32 %535)
  %537 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %538 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %537, i32 0, i32 19
  store i8* %536, i8** %538, align 8
  %539 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %540 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %539, i32 0, i32 17
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %543 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %542, i32 0, i32 18
  store i32 %541, i32* %543, align 8
  store i32 0, i32* %23, align 4
  br label %544

544:                                              ; preds = %578, %481
  %545 = load i32, i32* %23, align 4
  %546 = icmp slt i32 %545, 4
  br i1 %546, label %547, label %581

547:                                              ; preds = %544
  %548 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %549 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %548, i32 0, i32 16
  %550 = load i32*, i32** %549, align 8
  %551 = load i32, i32* %23, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %550, i64 %552
  %554 = load i32, i32* %553, align 4
  store i32 %554, i32* %20, align 4
  %555 = load i32, i32* %20, align 4
  %556 = call i8* @cpu_to_le32(i32 %555)
  %557 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %558 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %557, i32 0, i32 17
  %559 = load i8**, i8*** %558, align 8
  %560 = load i32, i32* %23, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8*, i8** %559, i64 %561
  store i8* %556, i8** %562, align 8
  %563 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %564 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %563, i32 0, i32 15
  %565 = load i32*, i32** %564, align 8
  %566 = load i32, i32* %23, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, i32* %565, i64 %567
  %569 = load i32, i32* %568, align 4
  store i32 %569, i32* %20, align 4
  %570 = load i32, i32* %20, align 4
  %571 = call i8* @cpu_to_le32(i32 %570)
  %572 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %573 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %572, i32 0, i32 16
  %574 = load i8**, i8*** %573, align 8
  %575 = load i32, i32* %23, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i8*, i8** %574, i64 %576
  store i8* %571, i8** %577, align 8
  br label %578

578:                                              ; preds = %547
  %579 = load i32, i32* %23, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %23, align 4
  br label %544

581:                                              ; preds = %544
  %582 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %583 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %582, i32 0, i32 14
  %584 = load i32, i32* %583, align 8
  %585 = call i8* @cpu_to_le32(i32 %584)
  %586 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %587 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %586, i32 0, i32 15
  store i8* %585, i8** %587, align 8
  %588 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %589 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %588, i32 0, i32 13
  %590 = load i32, i32* %589, align 4
  %591 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %592 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %591, i32 0, i32 14
  store i32 %590, i32* %592, align 4
  %593 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %594 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %593, i32 0, i32 12
  %595 = load i32, i32* %594, align 8
  %596 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %597 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %596, i32 0, i32 13
  store i32 %595, i32* %597, align 8
  %598 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %599 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %598, i32 0, i32 11
  %600 = load i32, i32* %599, align 4
  %601 = call i8* @cpu_to_le16(i32 %600)
  %602 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %603 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %602, i32 0, i32 12
  store i8* %601, i8** %603, align 8
  %604 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %605 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %604, i32 0, i32 10
  %606 = load i32, i32* %605, align 8
  %607 = call i8* @cpu_to_le16(i32 %606)
  %608 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %609 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %608, i32 0, i32 11
  store i8* %607, i8** %609, align 8
  %610 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %611 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %610, i32 0, i32 9
  %612 = load i32, i32* %611, align 4
  %613 = call i8* @cpu_to_le16(i32 %612)
  %614 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %615 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %614, i32 0, i32 10
  store i8* %613, i8** %615, align 8
  %616 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %617 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %616, i32 0, i32 8
  %618 = load i32, i32* %617, align 8
  %619 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %620 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %619, i32 0, i32 9
  store i32 %618, i32* %620, align 4
  %621 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %622 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %621, i32 0, i32 7
  %623 = load i32, i32* %622, align 4
  %624 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %625 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %624, i32 0, i32 8
  store i32 %623, i32* %625, align 8
  %626 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %627 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %626, i32 0, i32 6
  %628 = load i32, i32* %627, align 8
  store i32 %628, i32* %21, align 4
  %629 = load i32, i32* %21, align 4
  %630 = call i8* @cpu_to_le16(i32 %629)
  %631 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %632 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %631, i32 0, i32 7
  store i8* %630, i8** %632, align 8
  %633 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %634 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %633, i32 0, i32 5
  %635 = load i32, i32* %634, align 4
  %636 = call i32 @DMA_LO_LE(i32 %635)
  %637 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %638 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %637, i32 0, i32 6
  store i32 %636, i32* %638, align 4
  %639 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %640 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %639, i32 0, i32 5
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @DMA_HI_LE(i32 %641)
  %643 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %644 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %643, i32 0, i32 5
  store i32 %642, i32* %644, align 8
  %645 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %646 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %645, i32 0, i32 4
  %647 = load i32, i32* %646, align 8
  %648 = call i8* @cpu_to_le32(i32 %647)
  %649 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %650 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %649, i32 0, i32 4
  store i8* %648, i8** %650, align 8
  %651 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %652 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %651, i32 0, i32 3
  %653 = load i32, i32* %652, align 4
  %654 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %655 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %654, i32 0, i32 3
  store i32 %653, i32* %655, align 8
  %656 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %657 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %656, i32 0, i32 2
  %658 = load i32, i32* %657, align 8
  %659 = call i8* @cpu_to_le32(i32 %658)
  %660 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %661 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %660, i32 0, i32 2
  store i8* %659, i8** %661, align 8
  %662 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %663 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = call i8* @cpu_to_le32(i32 %664)
  %666 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %667 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %666, i32 0, i32 1
  store i8* %665, i8** %667, align 8
  %668 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %669 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 8
  %671 = call i8* @cpu_to_le32(i32 %670)
  %672 = load %struct.tcp_offload_params_opt2*, %struct.tcp_offload_params_opt2** %11, align 8
  %673 = getelementptr inbounds %struct.tcp_offload_params_opt2, %struct.tcp_offload_params_opt2* %672, i32 0, i32 0
  store i8* %671, i8** %673, align 8
  br label %674

674:                                              ; preds = %581, %266
  %675 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %676 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %677 = call i32 @qed_spq_post(%struct.qed_hwfn* %675, %struct.qed_spq_entry* %676, i32* null)
  store i32 %677, i32* %5, align 4
  br label %678

678:                                              ; preds = %674, %44
  %679 = load i32, i32* %5, align 4
  ret i32 %679
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_get_cm_pq_idx(%struct.qed_hwfn*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_chain_get_pbl_phys(i32*) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i8* @swab16(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @DMA_LO_LE(i32) #1

declare dso_local i32 @DMA_HI_LE(i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
