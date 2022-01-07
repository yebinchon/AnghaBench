; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_operational_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_operational_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.qed_dcbx_results, %struct.TYPE_4__ }
%struct.qed_dcbx_results = type { i32 }
%struct.TYPE_4__ = type { %struct.dcbx_features, i32 }
%struct.dcbx_features = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qed_dcbx_get = type { %struct.qed_dcbx_operational_params }
%struct.qed_dcbx_operational_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DCBX_CONFIG_VERSION = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_DISABLED = common dso_local global i32 0, align 4
@QED_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Dcbx is disabled\0A\00", align 1
@DCBX_CONFIG_VERSION_IEEE = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_CEE = common dso_local global i32 0, align 4
@DCBX_CONFIG_VERSION_STATIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Version support: ieee %d, cee %d, static %d\0A\00", align 1
@DCBX_APP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_dcbx_get*)* @qed_dcbx_get_operational_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dcbx_get_operational_params(%struct.qed_hwfn* %0, %struct.qed_dcbx_get* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_dcbx_get*, align 8
  %5 = alloca %struct.qed_dcbx_operational_params*, align 8
  %6 = alloca %struct.qed_dcbx_results*, align 8
  %7 = alloca %struct.dcbx_features*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_dcbx_get* %1, %struct.qed_dcbx_get** %4, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %4, align 8
  %19 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %18, i32 0, i32 0
  store %struct.qed_dcbx_operational_params* %19, %struct.qed_dcbx_operational_params** %5, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @DCBX_CONFIG_VERSION, align 4
  %22 = call i32 @QED_MFW_GET_FIELD(i32 %20, i32 %21)
  %23 = load i32, i32* @DCBX_CONFIG_VERSION_DISABLED, align 4
  %24 = icmp ne i32 %22, %23
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %33 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %35 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %37 = load i32, i32* @QED_MSG_DCB, align 4
  %38 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %36, i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %132

39:                                               ; preds = %2
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %41 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.dcbx_features* %44, %struct.dcbx_features** %7, align 8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %46 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store %struct.qed_dcbx_results* %48, %struct.qed_dcbx_results** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @DCBX_CONFIG_VERSION, align 4
  %51 = call i32 @QED_MFW_GET_FIELD(i32 %49, i32 %50)
  %52 = load i32, i32* @DCBX_CONFIG_VERSION_IEEE, align 4
  %53 = icmp eq i32 %51, %52
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %59 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @DCBX_CONFIG_VERSION, align 4
  %62 = call i32 @QED_MFW_GET_FIELD(i32 %60, i32 %61)
  %63 = load i32, i32* @DCBX_CONFIG_VERSION_CEE, align 4
  %64 = icmp eq i32 %62, %63
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %70 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @DCBX_CONFIG_VERSION, align 4
  %73 = call i32 @QED_MFW_GET_FIELD(i32 %71, i32 %72)
  %74 = load i32, i32* @DCBX_CONFIG_VERSION_STATIC, align 4
  %75 = icmp eq i32 %73, %74
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %81 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %83 = load i32, i32* @QED_MSG_DCB, align 4
  %84 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %85 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %88 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %91 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %82, i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89, i32 %92)
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %95 = load %struct.dcbx_features*, %struct.dcbx_features** %7, align 8
  %96 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %95, i32 0, i32 0
  %97 = load %struct.dcbx_features*, %struct.dcbx_features** %7, align 8
  %98 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dcbx_features*, %struct.dcbx_features** %7, align 8
  %102 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %101, i32 0, i32 2
  %103 = load %struct.dcbx_features*, %struct.dcbx_features** %7, align 8
  %104 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.qed_dcbx_get*, %struct.qed_dcbx_get** %4, align 8
  %107 = getelementptr inbounds %struct.qed_dcbx_get, %struct.qed_dcbx_get* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %107, i32 0, i32 7
  %109 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %110 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @qed_dcbx_get_common_params(%struct.qed_hwfn* %94, %struct.TYPE_6__* %96, i32 %100, i32* %102, i32 %105, i32* %108, i32 %111)
  %113 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %114 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %115 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %114, i32 0, i32 6
  %116 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %6, align 8
  %117 = call i32 @qed_dcbx_get_priority_info(%struct.qed_hwfn* %113, i32* %115, %struct.qed_dcbx_results* %116)
  %118 = load %struct.dcbx_features*, %struct.dcbx_features** %7, align 8
  %119 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DCBX_APP_ERROR, align 4
  %123 = call i32 @QED_MFW_GET_FIELD(i32 %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %126 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %129 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.qed_dcbx_operational_params*, %struct.qed_dcbx_operational_params** %5, align 8
  %131 = getelementptr inbounds %struct.qed_dcbx_operational_params, %struct.qed_dcbx_operational_params* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %39, %30
  ret void
}

declare dso_local i32 @QED_MFW_GET_FIELD(i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @qed_dcbx_get_common_params(%struct.qed_hwfn*, %struct.TYPE_6__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @qed_dcbx_get_priority_info(%struct.qed_hwfn*, i32*, %struct.qed_dcbx_results*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
