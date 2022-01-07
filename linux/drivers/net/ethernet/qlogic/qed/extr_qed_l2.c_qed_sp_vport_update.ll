; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_vport_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_vport_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_sp_vport_update_params = type { i32, i32, i32, i32, i64, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.qed_rss_params* }
%struct.qed_rss_params = type { i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.vport_update_ramrod_data_cmn = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i8* }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }
%struct.vport_update_ramrod_data = type { %struct.vport_update_ramrod_data_cmn }
%struct.qed_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vport_update_ramrod_data }

@EINVAL = common dso_local global i32 0, align 4
@ETH_RAMROD_VPORT_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_vport_update(%struct.qed_hwfn* %0, %struct.qed_sp_vport_update_params* %1, i32 %2, %struct.qed_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_sp_vport_update_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_cb*, align 8
  %10 = alloca %struct.qed_rss_params*, align 8
  %11 = alloca %struct.vport_update_ramrod_data_cmn*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 8
  %13 = alloca %struct.vport_update_ramrod_data*, align 8
  %14 = alloca %struct.qed_spq_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_sp_vport_update_params* %1, %struct.qed_sp_vport_update_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_spq_comp_cb* %3, %struct.qed_spq_comp_cb** %9, align 8
  %18 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %19 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %18, i32 0, i32 24
  %20 = load %struct.qed_rss_params*, %struct.qed_rss_params** %19, align 8
  store %struct.qed_rss_params* %20, %struct.qed_rss_params** %10, align 8
  store %struct.vport_update_ramrod_data* null, %struct.vport_update_ramrod_data** %13, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %14, align 8
  store i8* null, i8** %15, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_VF(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %30 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %31 = call i32 @qed_vf_pf_vport_update(%struct.qed_hwfn* %29, %struct.qed_sp_vport_update_params* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %5, align 4
  br label %212

33:                                               ; preds = %4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %35 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %36 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %35, i32 0, i32 23
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @qed_fw_vport(%struct.qed_hwfn* %34, i32 %37, i8** %15)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %5, align 4
  br label %212

43:                                               ; preds = %33
  %44 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 24)
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %46 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %45)
  %47 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %49 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %48, i32 0, i32 22
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %9, align 8
  %55 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %54, %struct.qed_spq_comp_cb** %55, align 8
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %57 = load i32, i32* @ETH_RAMROD_VPORT_UPDATE, align 4
  %58 = load i32, i32* @PROTOCOLID_ETH, align 4
  %59 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %56, %struct.qed_spq_entry** %14, i32 %57, i32 %58, %struct.qed_sp_init_data* %12)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %5, align 4
  br label %212

64:                                               ; preds = %43
  %65 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %14, align 8
  %66 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.vport_update_ramrod_data* %67, %struct.vport_update_ramrod_data** %13, align 8
  %68 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %69 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %68, i32 0, i32 0
  store %struct.vport_update_ramrod_data_cmn* %69, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %72 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %71, i32 0, i32 19
  store i8* %70, i8** %72, align 8
  %73 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %74 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %73, i32 0, i32 21
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %77 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %76, i32 0, i32 18
  store i32 %75, i32* %77, align 8
  %78 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %79 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %78, i32 0, i32 20
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %82 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %81, i32 0, i32 17
  store i32 %80, i32* %82, align 4
  %83 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %84 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %83, i32 0, i32 19
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %87 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %86, i32 0, i32 16
  store i32 %85, i32* %87, align 8
  %88 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %89 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %88, i32 0, i32 18
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %92 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %91, i32 0, i32 15
  store i32 %90, i32* %92, align 4
  %93 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %94 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %93, i32 0, i32 17
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %97 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %96, i32 0, i32 14
  store i32 %95, i32* %97, align 8
  %98 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %99 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %98, i32 0, i32 16
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %16, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %103 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %102, i32 0, i32 13
  store i8* %101, i8** %103, align 8
  %104 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %105 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %104, i32 0, i32 15
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %108 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %107, i32 0, i32 12
  store i32 %106, i32* %108, align 8
  %109 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %110 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %109, i32 0, i32 14
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %16, align 8
  %112 = load i8*, i8** %16, align 8
  %113 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %114 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %113, i32 0, i32 11
  store i8* %112, i8** %114, align 8
  %115 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %116 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %119 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %121 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %120, i32 0, i32 12
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %16, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %125 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %124, i32 0, i32 9
  store i8* %123, i8** %125, align 8
  %126 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %127 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @cpu_to_le16(i32 %128)
  %130 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %131 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %130, i32 0, i32 8
  store i32 %129, i32* %131, align 4
  %132 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %133 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %136 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  %137 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %138 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %141 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  %142 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %143 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %146 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %146, i32 0, i32 5
  store i32 %144, i32* %147, align 8
  %148 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %149 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %152 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %154 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %157 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 8
  %158 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %159 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %158, i32 0, i32 5
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %16, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %163 = getelementptr inbounds %struct.vport_update_ramrod_data, %struct.vport_update_ramrod_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %163, i32 0, i32 2
  store i8* %161, i8** %164, align 8
  %165 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %166 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %167 = load %struct.qed_rss_params*, %struct.qed_rss_params** %10, align 8
  %168 = call i32 @qed_sp_vport_update_rss(%struct.qed_hwfn* %165, %struct.vport_update_ramrod_data* %166, %struct.qed_rss_params* %167)
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %64
  %172 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %173 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %14, align 8
  %174 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %172, %struct.qed_spq_entry* %173)
  %175 = load i32, i32* %17, align 4
  store i32 %175, i32* %5, align 4
  br label %212

176:                                              ; preds = %64
  %177 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %178 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %176
  %182 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %183 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %186 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %188 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.vport_update_ramrod_data_cmn*, %struct.vport_update_ramrod_data_cmn** %11, align 8
  %191 = getelementptr inbounds %struct.vport_update_ramrod_data_cmn, %struct.vport_update_ramrod_data_cmn* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %181, %176
  %193 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %194 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %195 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %196 = call i32 @qed_sp_update_mcast_bin(%struct.qed_hwfn* %193, %struct.vport_update_ramrod_data* %194, %struct.qed_sp_vport_update_params* %195)
  %197 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %198 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %199 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %200 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @qed_sp_update_accept_mode(%struct.qed_hwfn* %197, %struct.vport_update_ramrod_data* %198, i32 %201)
  %203 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %204 = load %struct.vport_update_ramrod_data*, %struct.vport_update_ramrod_data** %13, align 8
  %205 = load %struct.qed_sp_vport_update_params*, %struct.qed_sp_vport_update_params** %7, align 8
  %206 = getelementptr inbounds %struct.qed_sp_vport_update_params, %struct.qed_sp_vport_update_params* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @qed_sp_vport_update_sge_tpa(%struct.qed_hwfn* %203, %struct.vport_update_ramrod_data* %204, i32 %207)
  %209 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %210 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %14, align 8
  %211 = call i32 @qed_spq_post(%struct.qed_hwfn* %209, %struct.qed_spq_entry* %210, i32* null)
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %192, %171, %62, %41, %28
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i64 @IS_VF(i32) #1

declare dso_local i32 @qed_vf_pf_vport_update(%struct.qed_hwfn*, %struct.qed_sp_vport_update_params*) #1

declare dso_local i32 @qed_fw_vport(%struct.qed_hwfn*, i32, i8**) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qed_sp_vport_update_rss(%struct.qed_hwfn*, %struct.vport_update_ramrod_data*, %struct.qed_rss_params*) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

declare dso_local i32 @qed_sp_update_mcast_bin(%struct.qed_hwfn*, %struct.vport_update_ramrod_data*, %struct.qed_sp_vport_update_params*) #1

declare dso_local i32 @qed_sp_update_accept_mode(%struct.qed_hwfn*, %struct.vport_update_ramrod_data*, i32) #1

declare dso_local i32 @qed_sp_vport_update_sge_tpa(%struct.qed_hwfn*, %struct.vport_update_ramrod_data*, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
