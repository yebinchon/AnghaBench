; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_buffer_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_buffer_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_buffer_layout = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_set_buffer_layout = type { i32, i8*, i8*, i8*, i8*, i32, i8* }

@DPNI_CMDID_SET_BUFFER_LAYOUT = common dso_local global i32 0, align 4
@PASS_TS = common dso_local global i32 0, align 4
@PASS_PR = common dso_local global i32 0, align 4
@PASS_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_set_buffer_layout(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpni_buffer_layout* %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpni_buffer_layout*, align 8
  %11 = alloca %struct.fsl_mc_command, align 8
  %12 = alloca %struct.dpni_cmd_set_buffer_layout*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpni_buffer_layout* %4, %struct.dpni_buffer_layout** %10, align 8
  %13 = bitcast %struct.fsl_mc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPNI_CMDID_SET_BUFFER_LAYOUT, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dpni_cmd_set_buffer_layout*
  store %struct.dpni_cmd_set_buffer_layout* %21, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %24 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %26 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %30 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %32 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PASS_TS, align 4
  %35 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %36 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dpni_set_field(i32 %33, i32 %34, i32 %37)
  %39 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %40 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PASS_PR, align 4
  %43 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %44 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dpni_set_field(i32 %41, i32 %42, i32 %45)
  %47 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %48 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PASS_FS, align 4
  %51 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %52 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dpni_set_field(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %56 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %60 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %62 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %66 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %68 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %72 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load %struct.dpni_buffer_layout*, %struct.dpni_buffer_layout** %10, align 8
  %74 = getelementptr inbounds %struct.dpni_buffer_layout, %struct.dpni_buffer_layout* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.dpni_cmd_set_buffer_layout*, %struct.dpni_cmd_set_buffer_layout** %12, align 8
  %78 = getelementptr inbounds %struct.dpni_cmd_set_buffer_layout, %struct.dpni_cmd_set_buffer_layout* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %80 = call i32 @mc_send_command(%struct.fsl_mc_io* %79, %struct.fsl_mc_command* %11)
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @dpni_set_field(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
