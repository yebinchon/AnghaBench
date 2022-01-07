; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_18__*, i32, %struct.TYPE_17__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_10__ = type { %struct.i40e_dcbx_config }
%struct.i40e_dcbx_config = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.i40e_params = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@I40E_MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@I40E_AQ_VSI_QS_HANDLE_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Invalid queue set handle for TC = %d, vsi id = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.i40e_params*)* @i40e_client_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_client_get_params(%struct.i40e_vsi* %0, %struct.i40e_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.i40e_params*, align 8
  %6 = alloca %struct.i40e_dcbx_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.i40e_params* %1, %struct.i40e_params** %5, align 8
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %10, i32 0, i32 2
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store %struct.i40e_dcbx_config* %14, %struct.i40e_dcbx_config** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %82, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @I40E_MAX_USER_PRIORITY, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %6, align 8
  %21 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @BIT(i64 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le16_to_cpu(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.i40e_params*, %struct.i40e_params** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_params, %struct.i40e_params* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i64 %46, i64* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.i40e_params*, %struct.i40e_params** %5, align 8
  %57 = getelementptr inbounds %struct.i40e_params, %struct.i40e_params* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i64 %55, i64* %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @I40E_AQ_VSI_QS_HANDLE_INVALID, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %37
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %68, i32 0, i32 2
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %76 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %37
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %15

85:                                               ; preds = %15
  %86 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.i40e_params*, %struct.i40e_params** %5, align 8
  %92 = getelementptr inbounds %struct.i40e_params, %struct.i40e_params* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %67
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
