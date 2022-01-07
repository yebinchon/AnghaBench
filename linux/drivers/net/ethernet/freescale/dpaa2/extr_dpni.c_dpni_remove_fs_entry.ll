; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_remove_fs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_remove_fs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_rule_cfg = type { i32, i32, i32 }
%struct.dpni_cmd_remove_fs_entry = type { i8*, i8*, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }

@DPNI_CMDID_REMOVE_FS_ENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_remove_fs_entry(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpni_rule_cfg* %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpni_rule_cfg*, align 8
  %11 = alloca %struct.dpni_cmd_remove_fs_entry*, align 8
  %12 = alloca %struct.fsl_mc_command, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpni_rule_cfg* %4, %struct.dpni_rule_cfg** %10, align 8
  %13 = bitcast %struct.fsl_mc_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPNI_CMDID_REMOVE_FS_ENT, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dpni_cmd_remove_fs_entry*
  store %struct.dpni_cmd_remove_fs_entry* %21, %struct.dpni_cmd_remove_fs_entry** %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.dpni_cmd_remove_fs_entry*, %struct.dpni_cmd_remove_fs_entry** %11, align 8
  %24 = getelementptr inbounds %struct.dpni_cmd_remove_fs_entry, %struct.dpni_cmd_remove_fs_entry* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dpni_rule_cfg*, %struct.dpni_rule_cfg** %10, align 8
  %26 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dpni_cmd_remove_fs_entry*, %struct.dpni_cmd_remove_fs_entry** %11, align 8
  %29 = getelementptr inbounds %struct.dpni_cmd_remove_fs_entry, %struct.dpni_cmd_remove_fs_entry* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dpni_rule_cfg*, %struct.dpni_rule_cfg** %10, align 8
  %31 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cpu_to_le64(i32 %32)
  %34 = load %struct.dpni_cmd_remove_fs_entry*, %struct.dpni_cmd_remove_fs_entry** %11, align 8
  %35 = getelementptr inbounds %struct.dpni_cmd_remove_fs_entry, %struct.dpni_cmd_remove_fs_entry* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.dpni_rule_cfg*, %struct.dpni_rule_cfg** %10, align 8
  %37 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le64(i32 %38)
  %40 = load %struct.dpni_cmd_remove_fs_entry*, %struct.dpni_cmd_remove_fs_entry** %11, align 8
  %41 = getelementptr inbounds %struct.dpni_cmd_remove_fs_entry, %struct.dpni_cmd_remove_fs_entry* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %43 = call i32 @mc_send_command(%struct.fsl_mc_io* %42, %struct.fsl_mc_command* %12)
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le64(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
