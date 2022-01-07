; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_sp_fcoe_conn_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_sp_fcoe_conn_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_14__*, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qed_fcoe_conn = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_13__, i32, %struct.TYPE_11__, i32*, i32, i32*, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.fcoe_conn_offload_ramrod_params = type { %struct.fcoe_conn_offload_ramrod_data }
%struct.fcoe_conn_offload_ramrod_data = type { i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_10__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.fcoe_conn_offload_ramrod_params }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@FCOE_RAMROD_CMD_ID_OFFLOAD_CONN = common dso_local global i32 0, align 4
@PROTOCOLID_FCOE = common dso_local global i32 0, align 4
@PQ_FLAGS_OFLD = common dso_local global i32 0, align 4
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@FCOE_CONN_OFFLOAD_RAMROD_DATA_B_SINGLE_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_fcoe_conn*, i32, %struct.qed_spq_comp_cb*)* @qed_sp_fcoe_conn_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_fcoe_conn_offload(%struct.qed_hwfn* %0, %struct.qed_fcoe_conn* %1, i32 %2, %struct.qed_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_fcoe_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_cb*, align 8
  %10 = alloca %struct.fcoe_conn_offload_ramrod_params*, align 8
  %11 = alloca %struct.fcoe_conn_offload_ramrod_data*, align 8
  %12 = alloca %struct.qed_spq_entry*, align 8
  %13 = alloca %struct.qed_sp_init_data, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_fcoe_conn* %1, %struct.qed_fcoe_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_spq_comp_cb* %3, %struct.qed_spq_comp_cb** %9, align 8
  store %struct.fcoe_conn_offload_ramrod_params* null, %struct.fcoe_conn_offload_ramrod_params** %10, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %12, align 8
  %17 = call i32 @memset(%struct.qed_sp_init_data* %13, i32 0, i32 24)
  %18 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %19 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %18, i32 0, i32 25
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %9, align 8
  %30 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %13, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %29, %struct.qed_spq_comp_cb** %30, align 8
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %32 = load i32, i32* @FCOE_RAMROD_CMD_ID_OFFLOAD_CONN, align 4
  %33 = load i32, i32* @PROTOCOLID_FCOE, align 4
  %34 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %31, %struct.qed_spq_entry** %12, i32 %32, i32 %33, %struct.qed_sp_init_data* %13)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %5, align 4
  br label %277

39:                                               ; preds = %4
  %40 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %41 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store %struct.fcoe_conn_offload_ramrod_params* %42, %struct.fcoe_conn_offload_ramrod_params** %10, align 8
  %43 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %10, align 8
  %44 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %43, i32 0, i32 0
  store %struct.fcoe_conn_offload_ramrod_data* %44, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %46 = load i32, i32* @PQ_FLAGS_OFLD, align 4
  %47 = call i8* @qed_get_cm_pq_idx(%struct.qed_hwfn* %45, i32 %46)
  store i8* %47, i8** %14, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = call i8* @cpu_to_le16(i8* %48)
  %50 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %51 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %50, i32 0, i32 24
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i8* @cpu_to_le16(i8* %52)
  %54 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %55 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %54, i32 0, i32 26
  store i8* %53, i8** %55, align 8
  %56 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %57 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @cpu_to_le16(i8* %58)
  %60 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %61 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %60, i32 0, i32 25
  store i8* %59, i8** %61, align 8
  %62 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %63 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %62, i32 0, i32 24
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %66 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %65, i32 0, i32 23
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @DMA_REGPAIR_LE(i32 %64, i32 %67)
  %69 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %70 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %69, i32 0, i32 23
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %73 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %72, i32 0, i32 22
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DMA_REGPAIR_LE(i32 %71, i32 %74)
  %76 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %77 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %76, i32 0, i32 22
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %80 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %79, i32 0, i32 21
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @DMA_REGPAIR_LE(i32 %78, i32 %81)
  %83 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %84 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %83, i32 0, i32 21
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %87 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %86, i32 0, i32 20
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @DMA_REGPAIR_LE(i32 %85, i32 %88)
  %90 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %91 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %90, i32 0, i32 20
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %94 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %93, i32 0, i32 19
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @DMA_REGPAIR_LE(i32 %92, i32 %97)
  %99 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %100 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %99, i32 0, i32 19
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %103 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %102, i32 0, i32 19
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @DMA_REGPAIR_LE(i32 %101, i32 %106)
  %108 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %109 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %108, i32 0, i32 18
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %112 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %111, i32 0, i32 18
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @DMA_REGPAIR_LE(i32 %110, i32 %113)
  %115 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %116 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %115, i32 0, i32 17
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %119 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %118, i32 0, i32 17
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @DMA_REGPAIR_LE(i32 %117, i32 %122)
  %124 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %125 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %124, i32 0, i32 16
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %128 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %127, i32 0, i32 17
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @DMA_REGPAIR_LE(i32 %126, i32 %131)
  %133 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %134 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @cpu_to_le16(i8* %135)
  %137 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %138 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %137, i32 0, i32 15
  store i8* %136, i8** %138, align 8
  %139 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %140 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @cpu_to_le16(i8* %141)
  %143 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %144 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %143, i32 0, i32 14
  store i8* %142, i8** %144, align 8
  %145 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %146 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @cpu_to_le16(i8* %147)
  %149 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %150 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %149, i32 0, i32 13
  store i8* %148, i8** %150, align 8
  %151 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %152 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %151, i32 0, i32 4
  %153 = load i8*, i8** %152, align 8
  %154 = call i8* @cpu_to_le16(i8* %153)
  %155 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %156 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %155, i32 0, i32 12
  store i8* %154, i8** %156, align 8
  %157 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %158 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %157, i32 0, i32 5
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @cpu_to_le16(i8* %159)
  %161 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %162 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %161, i32 0, i32 11
  store i8* %160, i8** %162, align 8
  %163 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %164 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %163, i32 0, i32 6
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @cpu_to_le16(i8* %165)
  %167 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %168 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %167, i32 0, i32 10
  store i8* %166, i8** %168, align 8
  %169 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %170 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %169, i32 0, i32 7
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @cpu_to_le16(i8* %171)
  store i8* %172, i8** %15, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %175 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %174, i32 0, i32 9
  store i8* %173, i8** %175, align 8
  %176 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %177 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %176, i32 0, i32 8
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @cpu_to_le16(i8* %178)
  store i8* %179, i8** %15, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %182 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %181, i32 0, i32 8
  store i8* %180, i8** %182, align 8
  %183 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %184 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %183, i32 0, i32 9
  %185 = load i8*, i8** %184, align 8
  %186 = call i8* @cpu_to_le16(i8* %185)
  store i8* %186, i8** %15, align 8
  %187 = load i8*, i8** %15, align 8
  %188 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %189 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %188, i32 0, i32 7
  store i8* %187, i8** %189, align 8
  %190 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %191 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %190, i32 0, i32 10
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @cpu_to_le16(i8* %192)
  store i8* %193, i8** %15, align 8
  %194 = load i8*, i8** %15, align 8
  %195 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %196 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %195, i32 0, i32 6
  store i8* %194, i8** %196, align 8
  %197 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %198 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %197, i32 0, i32 11
  %199 = load i8*, i8** %198, align 8
  %200 = call i8* @cpu_to_le16(i8* %199)
  %201 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %202 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %201, i32 0, i32 5
  store i8* %200, i8** %202, align 8
  %203 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %204 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %203, i32 0, i32 16
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %208 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  store i32 %206, i32* %209, align 8
  %210 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %211 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %210, i32 0, i32 16
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %215 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %218 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %217, i32 0, i32 16
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %222 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %221, i32 0, i32 4
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 8
  %224 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %225 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %224, i32 0, i32 15
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %228 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  %229 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %230 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %229, i32 0, i32 14
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %234 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 8
  %236 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %237 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %236, i32 0, i32 14
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %241 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  store i32 %239, i32* %242, align 4
  %243 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %244 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %243, i32 0, i32 14
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %248 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 8
  %250 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %251 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %250, i32 0, i32 13
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %254 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %256 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %257 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %256, i32 0, i32 0
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = call i64 @test_bit(i32 %255, i32* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %39
  %263 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %264 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @FCOE_CONN_OFFLOAD_RAMROD_DATA_B_SINGLE_VLAN, align 4
  %267 = call i32 @SET_FIELD(i32 %265, i32 %266, i32 1)
  br label %268

268:                                              ; preds = %262, %39
  %269 = load %struct.qed_fcoe_conn*, %struct.qed_fcoe_conn** %7, align 8
  %270 = getelementptr inbounds %struct.qed_fcoe_conn, %struct.qed_fcoe_conn* %269, i32 0, i32 12
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.fcoe_conn_offload_ramrod_data*, %struct.fcoe_conn_offload_ramrod_data** %11, align 8
  %273 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_data, %struct.fcoe_conn_offload_ramrod_data* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %275 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %276 = call i32 @qed_spq_post(%struct.qed_hwfn* %274, %struct.qed_spq_entry* %275, i32* null)
  store i32 %276, i32* %5, align 4
  br label %277

277:                                              ; preds = %268, %37
  %278 = load i32, i32* %5, align 4
  ret i32 %278
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i8* @qed_get_cm_pq_idx(%struct.qed_hwfn*, i32) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
