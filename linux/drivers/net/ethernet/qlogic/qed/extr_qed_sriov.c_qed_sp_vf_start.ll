; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sp_vf_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_sp_vf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.qed_vf_info = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.vf_start_ramrod_data = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i64*, i32* }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vf_start_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@COMMON_RAMROD_VF_START = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@PXP_CONCRETE_FID_VFID = common dso_local global i32 0, align 4
@PERSONALITY_ETH = common dso_local global i32 0, align 4
@PERSONALITY_RDMA_AND_ETH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown VF personality %d\0A\00", align 1
@ETH_HSI_VER_MINOR = common dso_local global i64 0, align 8
@ETH_HSI_VER_NO_PKT_LEN_TUNN = common dso_local global i64 0, align 8
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [107 x i8] c"VF [%d] - Requested fp hsi %02x.%02x which is slightly newer than PF's %02x.%02x; Configuring PFs version\0A\00", align 1
@ETH_HSI_VER_MAJOR = common dso_local global i32 0, align 4
@ETH_VER_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"VF[%d] - Starting using HSI %02x.%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_vf_info*)* @qed_sp_vf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sp_vf_start(%struct.qed_hwfn* %0, %struct.qed_vf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_vf_info*, align 8
  %6 = alloca %struct.vf_start_ramrod_data*, align 8
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca %struct.qed_sp_init_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_vf_info* %1, %struct.qed_vf_info** %5, align 8
  store %struct.vf_start_ramrod_data* null, %struct.vf_start_ramrod_data** %6, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %7, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = call i32 @memset(%struct.qed_sp_init_data* %8, i32 0, i32 12)
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %14)
  %16 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %18 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %22 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = load i32, i32* @COMMON_RAMROD_VF_START, align 4
  %25 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %26 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %23, %struct.qed_spq_entry** %7, i32 %24, i32 %25, %struct.qed_sp_init_data* %8)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %123

31:                                               ; preds = %2
  %32 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %33 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store %struct.vf_start_ramrod_data* %34, %struct.vf_start_ramrod_data** %6, align 8
  %35 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %36 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PXP_CONCRETE_FID_VFID, align 4
  %39 = call i32 @GET_FIELD(i32 %37, i32 %38)
  %40 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %41 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %43 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %47 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %49 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %60 [
    i32 129, label %52
    i32 128, label %56
  ]

52:                                               ; preds = %31
  %53 = load i32, i32* @PERSONALITY_ETH, align 4
  %54 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %55 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %72

56:                                               ; preds = %31
  %57 = load i32, i32* @PERSONALITY_RDMA_AND_ETH, align 4
  %58 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %59 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %72

60:                                               ; preds = %31
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %63 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DP_NOTICE(%struct.qed_hwfn* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %68 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %69 = call i32 @qed_sp_destroy_request(%struct.qed_hwfn* %67, %struct.qed_spq_entry* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %123

72:                                               ; preds = %56, %52
  %73 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %74 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @ETH_HSI_VER_NO_PKT_LEN_TUNN, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %87 = load i32, i32* @QED_MSG_IOV, align 4
  %88 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %89 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %94 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  %95 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %86, i32 %87, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i64 %92, i32 %93, i64 %94)
  %96 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %85, %81, %72
  %98 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %99 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %100 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @ETH_VER_KEY, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %107 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @ETH_VER_KEY, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %105, i64* %111, align 8
  %112 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %113 = load i32, i32* @QED_MSG_IOV, align 4
  %114 = load %struct.qed_vf_info*, %struct.qed_vf_info** %5, align 8
  %115 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %118 = load i64, i64* %10, align 8
  %119 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %112, i32 %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117, i64 %118)
  %120 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %121 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %122 = call i32 @qed_spq_post(%struct.qed_hwfn* %120, %struct.qed_spq_entry* %121, i32* null)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %97, %60, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_sp_destroy_request(%struct.qed_hwfn*, %struct.qed_spq_entry*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i64, ...) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
