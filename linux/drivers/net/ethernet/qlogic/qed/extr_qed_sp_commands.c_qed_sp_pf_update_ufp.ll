; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update_ufp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sp_commands.c_qed_sp_pf_update_ufp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@QED_UFP_PRI_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Invalid priority type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_CB = common dso_local global i32 0, align 4
@COMMON_RAMROD_PF_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@QED_UFP_PRI_OS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_pf_update_ufp(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_spq_entry*, align 8
  %5 = alloca %struct.qed_sp_init_data, align 4
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %4, align 8
  %7 = load i32, i32* @EOPNOTSUPP, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @QED_UFP_PRI_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @DP_INFO(%struct.qed_hwfn* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %1
  %25 = call i32 @memset(%struct.qed_sp_init_data* %5, i32 0, i32 12)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = call i32 @qed_spq_get_cid(%struct.qed_hwfn* %26)
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @QED_SPQ_MODE_CB, align 4
  %35 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %5, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %37 = load i32, i32* @COMMON_RAMROD_PF_UPDATE, align 4
  %38 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %39 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %36, %struct.qed_spq_entry** %4, i32 %37, i32 %38, %struct.qed_sp_init_data* %5)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %69

44:                                               ; preds = %24
  %45 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %46 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %50 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QED_UFP_PRI_OS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %57 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %65

60:                                               ; preds = %44
  %61 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %62 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %67 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %68 = call i32 @qed_spq_post(%struct.qed_hwfn* %66, %struct.qed_spq_entry* %67, i32* null)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %42, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_spq_get_cid(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
