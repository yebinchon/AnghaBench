; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_copy_mib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_copy_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_dcbx_mib_meta_data = type { %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@QED_DCBX_REMOTE_LLDP_MIB = common dso_local global i32 0, align 4
@QED_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"mib type = %d, try count = %d prefix seq num  = %d suffix seq num = %d\0A\00", align 1
@QED_DCBX_MAX_MIB_READ_TRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"MIB read err, mib type = %d, try count = %d prefix seq num = %d suffix seq num = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_dcbx_mib_meta_data*, i32)* @qed_dcbx_copy_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dcbx_copy_mib(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_dcbx_mib_meta_data* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_dcbx_mib_meta_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_dcbx_mib_meta_data* %2, %struct.qed_dcbx_mib_meta_data** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %81, %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @QED_DCBX_REMOTE_LLDP_MIB, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %20 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %21 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %24 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %27 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @qed_memcpy_from(%struct.qed_hwfn* %18, %struct.qed_ptt* %19, %struct.TYPE_2__* %22, i32 %25, i32 %28)
  %30 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %31 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %36 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  br label %63

40:                                               ; preds = %13
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %42 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %43 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %44 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %47 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %50 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @qed_memcpy_from(%struct.qed_hwfn* %41, %struct.qed_ptt* %42, %struct.TYPE_2__* %45, i32 %48, i32 %51)
  %53 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %54 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load %struct.qed_dcbx_mib_meta_data*, %struct.qed_dcbx_mib_meta_data** %7, align 8
  %59 = getelementptr inbounds %struct.qed_dcbx_mib_meta_data, %struct.qed_dcbx_mib_meta_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %40, %17
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %67 = load i32, i32* @QED_MSG_DCB, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %66, i32 %67, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @QED_DCBX_MAX_MIB_READ_TRY, align 4
  %80 = icmp slt i32 %78, %79
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ false, %73 ], [ %80, %77 ]
  br i1 %82, label %13, label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @QED_DCBX_MAX_MIB_READ_TRY, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @DP_ERR(%struct.qed_hwfn* %88, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i64 %91, i64 %92)
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %87, %83
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @qed_memcpy_from(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
