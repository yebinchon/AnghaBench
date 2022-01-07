; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_ntuple_arfs_filter_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_ntuple_arfs_filter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_ntuple_filter_params = type { i32, i32, i64, i64 }
%struct.qed_hwfn = type { i32 }
%struct.qed_spq_comp_cb = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@qed_arfs_sp_response_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vfid 0x%02x is out of bounds\0A\00", align 1
@QED_RFS_NTUPLE_QID_RSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to issue a-RFS filter configuration\0A\00", align 1
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Successfully issued a-RFS filter configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i8*, %struct.qed_ntuple_filter_params*)* @qed_ntuple_arfs_filter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ntuple_arfs_filter_config(%struct.qed_dev* %0, i8* %1, %struct.qed_ntuple_filter_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qed_ntuple_filter_params*, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_spq_comp_cb, align 8
  %10 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.qed_ntuple_filter_params* %2, %struct.qed_ntuple_filter_params** %7, align 8
  %11 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %12 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %11)
  store %struct.qed_hwfn* %12, %struct.qed_hwfn** %8, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @qed_arfs_sp_response_handler, align 4
  %16 = getelementptr inbounds %struct.qed_spq_comp_cb, %struct.qed_spq_comp_cb* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds %struct.qed_spq_comp_cb, %struct.qed_spq_comp_cb* %9, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %20 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %3
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %25 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %26 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @qed_iov_is_valid_vfid(%struct.qed_hwfn* %24, i32 %27, i32 0, i32 0)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %32 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %33 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DP_INFO(%struct.qed_hwfn* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %63

37:                                               ; preds = %23
  %38 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %39 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %44 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @QED_RFS_NTUPLE_QID_RSS, align 4
  %46 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %47 = getelementptr inbounds %struct.qed_ntuple_filter_params, %struct.qed_ntuple_filter_params* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %37, %3
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %50 = load %struct.qed_ntuple_filter_params*, %struct.qed_ntuple_filter_params** %7, align 8
  %51 = call i32 @qed_configure_rfs_ntuple_filter(%struct.qed_hwfn* %49, %struct.qed_spq_comp_cb* %9, %struct.qed_ntuple_filter_params* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %56 = call i32 @DP_NOTICE(%struct.qed_hwfn* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %59 = load i32, i32* @NETIF_MSG_DRV, align 4
  %60 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %58, i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %30
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_iov_is_valid_vfid(%struct.qed_hwfn*, i32, i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_configure_rfs_ntuple_filter(%struct.qed_hwfn*, %struct.qed_spq_comp_cb*, %struct.qed_ntuple_filter_params*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
