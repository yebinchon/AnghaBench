; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%union.dpni_statistics = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_get_statistics = type { i32 }
%struct.dpni_rsp_get_statistics = type { i32* }

@DPNI_CMDID_GET_STATISTICS = common dso_local global i32 0, align 4
@DPNI_STATISTICS_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_get_statistics(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %union.dpni_statistics* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.dpni_statistics*, align 8
  %12 = alloca %struct.fsl_mc_command, align 8
  %13 = alloca %struct.dpni_cmd_get_statistics*, align 8
  %14 = alloca %struct.dpni_rsp_get_statistics*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %union.dpni_statistics* %4, %union.dpni_statistics** %11, align 8
  %17 = bitcast %struct.fsl_mc_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load i32, i32* @DPNI_CMDID_GET_STATISTICS, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @mc_encode_cmd_header(i32 %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dpni_cmd_get_statistics*
  store %struct.dpni_cmd_get_statistics* %25, %struct.dpni_cmd_get_statistics** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.dpni_cmd_get_statistics*, %struct.dpni_cmd_get_statistics** %13, align 8
  %28 = getelementptr inbounds %struct.dpni_cmd_get_statistics, %struct.dpni_cmd_get_statistics* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %7, align 8
  %30 = call i32 @mc_send_command(%struct.fsl_mc_io* %29, %struct.fsl_mc_command* %12)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %6, align 4
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.dpni_rsp_get_statistics*
  store %struct.dpni_rsp_get_statistics* %38, %struct.dpni_rsp_get_statistics** %14, align 8
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %59, %35
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @DPNI_STATISTICS_CNT, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load %struct.dpni_rsp_get_statistics*, %struct.dpni_rsp_get_statistics** %14, align 8
  %45 = getelementptr inbounds %struct.dpni_rsp_get_statistics, %struct.dpni_rsp_get_statistics* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le64_to_cpu(i32 %50)
  %52 = load %union.dpni_statistics*, %union.dpni_statistics** %11, align 8
  %53 = bitcast %union.dpni_statistics* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %39

62:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @le64_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
