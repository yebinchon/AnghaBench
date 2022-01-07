; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_taildrop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_taildrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_taildrop = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_get_taildrop = type { i32, i32, i8*, i8* }
%struct.dpni_rsp_get_taildrop = type { i32, i32, i32 }

@DPNI_CMDID_GET_TAILDROP = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_get_taildrop(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, %struct.dpni_taildrop* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_mc_io*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.dpni_taildrop*, align 8
  %18 = alloca %struct.fsl_mc_command, align 8
  %19 = alloca %struct.dpni_cmd_get_taildrop*, align 8
  %20 = alloca %struct.dpni_rsp_get_taildrop*, align 8
  %21 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.dpni_taildrop* %7, %struct.dpni_taildrop** %17, align 8
  %22 = bitcast %struct.fsl_mc_command* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = load i32, i32* @DPNI_CMDID_GET_TAILDROP, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @mc_encode_cmd_header(i32 %23, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %18, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %18, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.dpni_cmd_get_taildrop*
  store %struct.dpni_cmd_get_taildrop* %30, %struct.dpni_cmd_get_taildrop** %19, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.dpni_cmd_get_taildrop*, %struct.dpni_cmd_get_taildrop** %19, align 8
  %33 = getelementptr inbounds %struct.dpni_cmd_get_taildrop, %struct.dpni_cmd_get_taildrop* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.dpni_cmd_get_taildrop*, %struct.dpni_cmd_get_taildrop** %19, align 8
  %36 = getelementptr inbounds %struct.dpni_cmd_get_taildrop, %struct.dpni_cmd_get_taildrop* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.dpni_cmd_get_taildrop*, %struct.dpni_cmd_get_taildrop** %19, align 8
  %39 = getelementptr inbounds %struct.dpni_cmd_get_taildrop, %struct.dpni_cmd_get_taildrop* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load %struct.dpni_cmd_get_taildrop*, %struct.dpni_cmd_get_taildrop** %19, align 8
  %42 = getelementptr inbounds %struct.dpni_cmd_get_taildrop, %struct.dpni_cmd_get_taildrop* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %10, align 8
  %44 = call i32 @mc_send_command(%struct.fsl_mc_io* %43, %struct.fsl_mc_command* %18)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %21, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %8
  %48 = load i32, i32* %21, align 4
  store i32 %48, i32* %9, align 4
  br label %71

49:                                               ; preds = %8
  %50 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %18, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.dpni_rsp_get_taildrop*
  store %struct.dpni_rsp_get_taildrop* %52, %struct.dpni_rsp_get_taildrop** %20, align 8
  %53 = load %struct.dpni_rsp_get_taildrop*, %struct.dpni_rsp_get_taildrop** %20, align 8
  %54 = getelementptr inbounds %struct.dpni_rsp_get_taildrop, %struct.dpni_rsp_get_taildrop* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ENABLE, align 4
  %57 = call i32 @dpni_get_field(i32 %55, i32 %56)
  %58 = load %struct.dpni_taildrop*, %struct.dpni_taildrop** %17, align 8
  %59 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dpni_rsp_get_taildrop*, %struct.dpni_rsp_get_taildrop** %20, align 8
  %61 = getelementptr inbounds %struct.dpni_rsp_get_taildrop, %struct.dpni_rsp_get_taildrop* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dpni_taildrop*, %struct.dpni_taildrop** %17, align 8
  %64 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dpni_rsp_get_taildrop*, %struct.dpni_rsp_get_taildrop** %20, align 8
  %66 = getelementptr inbounds %struct.dpni_rsp_get_taildrop, %struct.dpni_rsp_get_taildrop* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  %69 = load %struct.dpni_taildrop*, %struct.dpni_taildrop** %17, align 8
  %70 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %49, %47
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @dpni_get_field(i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
