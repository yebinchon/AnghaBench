; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_rfs_ntuple_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_configure_rfs_ntuple_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.qed_ntuple_filter_params = type { i64, i32, i64, i64, i32, i64 }
%struct.rx_update_gft_filter_data = type { i32, i32, i64, i64, i8*, i8*, i8*, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rx_update_gft_filter_data }
%struct.qed_sp_init_data = type { i32, %struct.qed_spq_comp_cb*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_GFT_UPDATE_FILTER = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@ETH_GFT_TRASHCAN_VPORT = common dso_local global i32 0, align 4
@QED_RFS_NTUPLE_QID_RSS = common dso_local global i64 0, align 8
@GFT_ADD_FILTER = common dso_local global i32 0, align 4
@GFT_DELETE_FILTER = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"V[%0x], Q[%04x] - %s filter from 0x%llx [length %04xb]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Removing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_configure_rfs_ntuple_filter(%struct.qed_hwfn* %0, %struct.qed_spq_comp_cb* %1, %struct.qed_ntuple_filter_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_spq_comp_cb*, align 8
  %7 = alloca %struct.qed_ntuple_filter_params*, align 8
  %8 = alloca %struct.rx_update_gft_filter_data*, align 8
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca %struct.qed_sp_init_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_spq_comp_cb* %1, %struct.qed_spq_comp_cb** %6, align 8
  store %struct.qed_ntuple_filter_params* %2, %struct.qed_ntuple_filter_params** %7, align 8
  store %struct.rx_update_gft_filter_data* null, %struct.rx_update_gft_filter_data** %8, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = call i32 @memset(%struct.qed_sp_init_data* %10, i32 0, i32 24)
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %17)
  %19 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %6, align 8
  %26 = icmp ne %struct.qed_spq_comp_cb* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %29 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %6, align 8
  %31 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 1
  store %struct.qed_spq_comp_cb* %30, %struct.qed_spq_comp_cb** %31, align 8
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %34 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %37 = load i32, i32* @ETH_RAMROD_GFT_UPDATE_FILTER, align 4
  %38 = load i32, i32* @PROTOCOLID_ETH, align 4
  %39 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %36, %struct.qed_spq_entry** %9, i32 %37, i32 %38, %struct.qed_sp_init_data* %10)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %4, align 4
  br label %150

44:                                               ; preds = %35
  %45 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %46 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store %struct.rx_update_gft_filter_data* %47, %struct.rx_update_gft_filter_data** %8, align 8
  %48 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %49 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %52 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @DMA_REGPAIR_LE(i32 %50, i64 %53)
  %55 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %56 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %60 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %62 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %44
  %66 = load i32, i32* @ETH_GFT_TRASHCAN_VPORT, align 4
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %69 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  br label %107

70:                                               ; preds = %44
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %72 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %73 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @qed_fw_vport(%struct.qed_hwfn* %71, i32 %74, i64* %12)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %145

79:                                               ; preds = %70
  %80 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %81 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @QED_RFS_NTUPLE_QID_RSS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %87 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %88 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @qed_fw_l2_queue(%struct.qed_hwfn* %86, i64 %89, i32* %11)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %145

94:                                               ; preds = %85
  %95 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %96 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i8* @cpu_to_le16(i32 %97)
  %99 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %100 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %94, %79
  %102 = load i64, i64* %12, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i8* @cpu_to_le16(i32 %103)
  %105 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %106 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %101, %65
  %108 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %109 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %108, i32 0, i32 3
  store i64 0, i64* %109, align 8
  %110 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %111 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %113 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @GFT_ADD_FILTER, align 4
  br label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @GFT_DELETE_FILTER, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %123 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %125 = load i32, i32* @QED_MSG_SP, align 4
  %126 = load i64, i64* %12, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %129 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %134 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %135 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %139 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %124, i32 %125, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %126, i32 %127, i8* %133, i32 %137, i32 %140)
  %142 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %143 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %144 = call i32 @qed_spq_post(%struct.qed_hwfn* %142, %struct.qed_spq_entry* %143, i32* null)
  store i32 %144, i32* %4, align 4
  br label %150

145:                                              ; preds = %93, %78
  %146 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %147 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %148 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %146, %struct.qed_spq_entry* %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %145, %120, %42
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @qed_fw_vport(%struct.qed_hwfn*, i32, i64*) #1

declare dso_local i32 @qed_fw_l2_queue(%struct.qed_hwfn*, i64, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
