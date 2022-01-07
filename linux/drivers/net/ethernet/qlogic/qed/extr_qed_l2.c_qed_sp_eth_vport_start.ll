; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_eth_vport_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_eth_vport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_sp_vport_start_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vport_start_ramrod_data = type { i32, i32, i32, i32, %struct.qed_sp_init_data, %struct.TYPE_4__, i32, i32, i32, i32, i8*, i32 }
%struct.qed_sp_init_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8* }
%struct.qed_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vport_start_ramrod_data }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_VPORT_START = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_UCAST_DROP_ALL = common dso_local global i32 0, align 4
@ETH_VPORT_RX_MODE_MCAST_DROP_ALL = common dso_local global i32 0, align 4
@ETH_TPA_MAX_AGGS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_eth_vport_start(%struct.qed_hwfn* %0, %struct.qed_sp_vport_start_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_sp_vport_start_params*, align 8
  %6 = alloca %struct.vport_start_ramrod_data*, align 8
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca %struct.qed_sp_init_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_sp_vport_start_params* %1, %struct.qed_sp_vport_start_params** %5, align 8
  store %struct.vport_start_ramrod_data* null, %struct.vport_start_ramrod_data** %6, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %16 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qed_fw_vport(%struct.qed_hwfn* %14, i32 %17, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %169

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.qed_sp_init_data* %8, i32 0, i32 48)
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %25)
  %27 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 11
  store i32 %26, i32* %27, align 4
  %28 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %29 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 10
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %33 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 9
  store i32 %32, i32* %33, align 4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %35 = load i32, i32* @ETH_RAMROD_VPORT_START, align 4
  %36 = load i32, i32* @PROTOCOLID_ETH, align 4
  %37 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %34, %struct.qed_spq_entry** %7, i32 %35, i32 %36, %struct.qed_sp_init_data* %8)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %169

42:                                               ; preds = %23
  %43 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %44 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store %struct.vport_start_ramrod_data* %45, %struct.vport_start_ramrod_data** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %48 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 8
  %49 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %50 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %54 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %56 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %55, i32 0, i32 10
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %59 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %61 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %64 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %66 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %69 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %71 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %74 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @ETH_VPORT_RX_MODE_UCAST_DROP_ALL, align 4
  %77 = call i32 @SET_FIELD(i32 %75, i32 %76, i32 1)
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @ETH_VPORT_RX_MODE_MCAST_DROP_ALL, align 4
  %80 = call i32 @SET_FIELD(i32 %78, i32 %79, i32 1)
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %84 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  %86 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %87 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %86, i32 0, i32 4
  %88 = call i32 @memset(%struct.qed_sp_init_data* %87, i32 0, i32 4)
  %89 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %90 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %93 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %93, i32 0, i32 8
  store i32 %91, i32* %94, align 8
  %95 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %96 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %132 [
    i32 128, label %98
  ]

98:                                               ; preds = %42
  %99 = load i32, i32* @ETH_TPA_MAX_AGGS_NUM, align 4
  %100 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %101 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %101, i32 0, i32 7
  store i32 %99, i32* %102, align 4
  %103 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %104 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %104, i32 0, i32 0
  store i32 -1, i32* %105, align 8
  %106 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %107 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sdiv i32 %108, 2
  %110 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %111 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %114 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sdiv i32 %115, 2
  %117 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %118 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 8
  %120 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %121 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  %123 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %124 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %124, i32 0, i32 4
  store i32 1, i32* %125, align 8
  %126 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %127 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %127, i32 0, i32 5
  store i32 1, i32* %128, align 4
  %129 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %130 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %130, i32 0, i32 6
  store i32 1, i32* %131, align 8
  br label %133

132:                                              ; preds = %42
  br label %133

133:                                              ; preds = %132, %98
  %134 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %135 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %138 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %140 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %147 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %149 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %156 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %158 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.qed_sp_vport_start_params*, %struct.qed_sp_vport_start_params** %5, align 8
  %161 = getelementptr inbounds %struct.qed_sp_vport_start_params, %struct.qed_sp_vport_start_params* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @qed_concrete_to_sw_fid(i32 %159, i32 %162)
  %164 = load %struct.vport_start_ramrod_data*, %struct.vport_start_ramrod_data** %6, align 8
  %165 = getelementptr inbounds %struct.vport_start_ramrod_data, %struct.vport_start_ramrod_data* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %167 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %168 = call i32 @qed_spq_post(%struct.qed_hwfn* %166, %struct.qed_spq_entry* %167, i32* null)
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %133, %40, %21
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @qed_fw_vport(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_concrete_to_sw_fid(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
