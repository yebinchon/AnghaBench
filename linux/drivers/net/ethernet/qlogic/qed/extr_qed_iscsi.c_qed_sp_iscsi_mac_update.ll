; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_mac_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_sp_iscsi_mac_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qed_iscsi_conn = type { i32*, i32, i32, i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.iscsi_spe_conn_mac_update = type { i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.iscsi_spe_conn_mac_update }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISCSI_RAMROD_CMD_ID_MAC_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ISCSI = common dso_local global i32 0, align 4
@ISCSI_SLOW_PATH_HDR_LAYER_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_iscsi_conn*, i32, %struct.qed_spq_comp_cb*)* @qed_sp_iscsi_mac_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_iscsi_mac_update(%struct.qed_hwfn* %0, %struct.qed_iscsi_conn* %1, i32 %2, %struct.qed_spq_comp_cb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_iscsi_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_spq_comp_cb*, align 8
  %10 = alloca %struct.iscsi_spe_conn_mac_update*, align 8
  %11 = alloca %struct.qed_spq_entry*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_iscsi_conn* %1, %struct.qed_iscsi_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_spq_comp_cb* %3, %struct.qed_spq_comp_cb** %9, align 8
  store %struct.iscsi_spe_conn_mac_update* null, %struct.iscsi_spe_conn_mac_update** %10, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 24)
  %18 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %19 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %9, align 8
  %30 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %29, %struct.qed_spq_comp_cb** %30, align 8
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %32 = load i32, i32* @ISCSI_RAMROD_CMD_ID_MAC_UPDATE, align 4
  %33 = load i32, i32* @PROTOCOLID_ISCSI, align 4
  %34 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %31, %struct.qed_spq_entry** %11, i32 %32, i32 %33, %struct.qed_sp_init_data* %12)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %125

39:                                               ; preds = %4
  %40 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %41 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.iscsi_spe_conn_mac_update* %42, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %43 = load i32, i32* @ISCSI_RAMROD_CMD_ID_MAC_UPDATE, align 4
  %44 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %45 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %48 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ISCSI_SLOW_PATH_HDR_LAYER_CODE, align 4
  %52 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %53 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @SET_FIELD(i32 %50, i32 %51, i32 %54)
  %56 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %57 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %61 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %63 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cpu_to_le32(i32 %64)
  %66 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %67 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %69 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %75 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %74, i32 0, i32 2
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %78 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %84 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %83, i32 0, i32 2
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %87 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %93 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %92, i32 0, i32 1
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %96 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %102 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %101, i32 0, i32 1
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %100, i32* %103, align 4
  %104 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %105 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %111 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %110, i32 0, i32 0
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %109, i32* %112, align 4
  %113 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %7, align 8
  %114 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.iscsi_spe_conn_mac_update*, %struct.iscsi_spe_conn_mac_update** %10, align 8
  %120 = getelementptr inbounds %struct.iscsi_spe_conn_mac_update, %struct.iscsi_spe_conn_mac_update* %119, i32 0, i32 0
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %123 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %124 = call i32 @qed_spq_post(%struct.qed_hwfn* %122, %struct.qed_spq_entry* %123, i32* null)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %39, %37
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
