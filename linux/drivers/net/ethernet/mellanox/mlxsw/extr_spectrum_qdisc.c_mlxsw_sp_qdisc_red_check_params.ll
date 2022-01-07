; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_red_check_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_red_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_qdisc = type { i32 }
%struct.tc_red_qopt_offload_params = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"spectrum: RED: min %u is bigger then max %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"spectrum: RED: max value %u is too big\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"spectrum: RED: 0 value is illegal for min and max\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, i8*)* @mlxsw_sp_qdisc_red_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_red_check_params(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxsw_sp*, align 8
  %9 = alloca %struct.tc_red_qopt_offload_params*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %11, align 8
  store %struct.mlxsw_sp* %12, %struct.mlxsw_sp** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.tc_red_qopt_offload_params*
  store %struct.tc_red_qopt_offload_params* %14, %struct.tc_red_qopt_offload_params** %9, align 8
  %15 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %16 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %19 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %29 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %32 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %79

37:                                               ; preds = %3
  %38 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %39 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MAX_BUFFER_SIZE, align 4
  %45 = call i64 @MLXSW_CORE_RES_GET(i32 %43, i32 %44)
  %46 = icmp sgt i64 %40, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %37
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %49 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %54 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %79

59:                                               ; preds = %37
  %60 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %61 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.tc_red_qopt_offload_params*, %struct.tc_red_qopt_offload_params** %9, align 8
  %66 = getelementptr inbounds %struct.tc_red_qopt_offload_params, %struct.tc_red_qopt_offload_params* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %64, %59
  %70 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %8, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %69, %47, %22
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
