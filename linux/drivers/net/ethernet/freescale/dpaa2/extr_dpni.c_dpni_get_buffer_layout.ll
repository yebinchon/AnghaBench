; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_buffer_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_buffer_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_buffer_layout = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_get_buffer_layout = type { i32 }
%struct.dpni_rsp_get_buffer_layout = type { i32, i32, i32, i32, i32 }

@DPNI_CMDID_GET_BUFFER_LAYOUT = common dso_local global i32 0, align 4
@PASS_TS = common dso_local global i32 0, align 4
@PASS_PR = common dso_local global i32 0, align 4
@PASS_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_get_buffer_layout(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpni_buffer_layout* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpni_buffer_layout*, align 8
  %12 = alloca %struct.fsl_mc_command, align 8
  %13 = alloca %struct.dpni_cmd_get_buffer_layout*, align 8
  %14 = alloca %struct.dpni_rsp_get_buffer_layout*, align 8
  %15 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dpni_buffer_layout* %4, %struct.dpni_buffer_layout** %11, align 8
  %16 = bitcast %struct.fsl_mc_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* @DPNI_CMDID_GET_BUFFER_LAYOUT, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mc_encode_cmd_header(i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dpni_cmd_get_buffer_layout*
  store %struct.dpni_cmd_get_buffer_layout* %24, %struct.dpni_cmd_get_buffer_layout** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.dpni_cmd_get_buffer_layout*, %struct.dpni_cmd_get_buffer_layout** %13, align 8
  %27 = getelementptr inbounds %struct.dpni_cmd_get_buffer_layout, %struct.dpni_cmd_get_buffer_layout* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %7, align 8
  %29 = call i32 @mc_send_command(%struct.fsl_mc_io* %28, %struct.fsl_mc_command* %12)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %6, align 4
  br label %83

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.dpni_rsp_get_buffer_layout*
  store %struct.dpni_rsp_get_buffer_layout* %37, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %38 = load %struct.dpni_rsp_get_buffer_layout*, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %39 = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, %struct.dpni_rsp_get_buffer_layout* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PASS_TS, align 4
  %42 = call i8* @dpni_get_field(i32 %40, i32 %41)
  %43 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %11, align 8
  %44 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dpni_rsp_get_buffer_layout*, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %46 = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, %struct.dpni_rsp_get_buffer_layout* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PASS_PR, align 4
  %49 = call i8* @dpni_get_field(i32 %47, i32 %48)
  %50 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %11, align 8
  %51 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.dpni_rsp_get_buffer_layout*, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %53 = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, %struct.dpni_rsp_get_buffer_layout* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PASS_FS, align 4
  %56 = call i8* @dpni_get_field(i32 %54, i32 %55)
  %57 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %11, align 8
  %58 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.dpni_rsp_get_buffer_layout*, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %60 = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, %struct.dpni_rsp_get_buffer_layout* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %11, align 8
  %64 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.dpni_rsp_get_buffer_layout*, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %66 = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, %struct.dpni_rsp_get_buffer_layout* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le16_to_cpu(i32 %67)
  %69 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %11, align 8
  %70 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.dpni_rsp_get_buffer_layout*, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %72 = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, %struct.dpni_rsp_get_buffer_layout* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @le16_to_cpu(i32 %73)
  %75 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %11, align 8
  %76 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.dpni_rsp_get_buffer_layout*, %struct.dpni_rsp_get_buffer_layout** %14, align 8
  %78 = getelementptr inbounds %struct.dpni_rsp_get_buffer_layout, %struct.dpni_rsp_get_buffer_layout* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le16_to_cpu(i32 %79)
  %81 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %11, align 8
  %82 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %34, %32
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @dpni_get_field(i32, i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
