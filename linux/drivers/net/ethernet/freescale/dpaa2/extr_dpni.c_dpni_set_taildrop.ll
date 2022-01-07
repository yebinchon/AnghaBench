; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_taildrop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_taildrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_taildrop = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_set_taildrop = type { i32, i32, i32, i32, i32, i8*, i8* }

@DPNI_CMDID_SET_TAILDROP = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_set_taildrop(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, %struct.dpni_taildrop* %7) #0 {
  %9 = alloca %struct.fsl_mc_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dpni_taildrop*, align 8
  %17 = alloca %struct.fsl_mc_command, align 8
  %18 = alloca %struct.dpni_cmd_set_taildrop*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.dpni_taildrop* %7, %struct.dpni_taildrop** %16, align 8
  %19 = bitcast %struct.fsl_mc_command* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load i32, i32* @DPNI_CMDID_SET_TAILDROP, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @mc_encode_cmd_header(i32 %20, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %17, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %17, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.dpni_cmd_set_taildrop*
  store %struct.dpni_cmd_set_taildrop* %27, %struct.dpni_cmd_set_taildrop** %18, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.dpni_cmd_set_taildrop*, %struct.dpni_cmd_set_taildrop** %18, align 8
  %30 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, %struct.dpni_cmd_set_taildrop* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.dpni_cmd_set_taildrop*, %struct.dpni_cmd_set_taildrop** %18, align 8
  %33 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, %struct.dpni_cmd_set_taildrop* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.dpni_cmd_set_taildrop*, %struct.dpni_cmd_set_taildrop** %18, align 8
  %36 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, %struct.dpni_cmd_set_taildrop* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.dpni_cmd_set_taildrop*, %struct.dpni_cmd_set_taildrop** %18, align 8
  %39 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, %struct.dpni_cmd_set_taildrop* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.dpni_cmd_set_taildrop*, %struct.dpni_cmd_set_taildrop** %18, align 8
  %41 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, %struct.dpni_cmd_set_taildrop* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ENABLE, align 4
  %44 = load %struct.dpni_taildrop*, %struct.dpni_taildrop** %16, align 8
  %45 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dpni_set_field(i32 %42, i32 %43, i32 %46)
  %48 = load %struct.dpni_taildrop*, %struct.dpni_taildrop** %16, align 8
  %49 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dpni_cmd_set_taildrop*, %struct.dpni_cmd_set_taildrop** %18, align 8
  %52 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, %struct.dpni_cmd_set_taildrop* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dpni_taildrop*, %struct.dpni_taildrop** %16, align 8
  %54 = getelementptr inbounds %struct.dpni_taildrop, %struct.dpni_taildrop* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.dpni_cmd_set_taildrop*, %struct.dpni_cmd_set_taildrop** %18, align 8
  %58 = getelementptr inbounds %struct.dpni_cmd_set_taildrop, %struct.dpni_cmd_set_taildrop* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %60 = call i32 @mc_send_command(%struct.fsl_mc_io* %59, %struct.fsl_mc_command* %17)
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @dpni_set_field(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
