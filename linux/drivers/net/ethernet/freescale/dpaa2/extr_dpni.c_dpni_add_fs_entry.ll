; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_add_fs_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_add_fs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_rule_cfg = type { i32, i32, i32 }
%struct.dpni_fs_action_cfg = type { i32, i32, i32 }
%struct.dpni_cmd_add_fs_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }

@DPNI_CMDID_ADD_FS_ENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_add_fs_entry(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.dpni_rule_cfg* %5, %struct.dpni_fs_action_cfg* %6) #0 {
  %8 = alloca %struct.fsl_mc_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dpni_rule_cfg*, align 8
  %14 = alloca %struct.dpni_fs_action_cfg*, align 8
  %15 = alloca %struct.dpni_cmd_add_fs_entry*, align 8
  %16 = alloca %struct.fsl_mc_command, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.dpni_rule_cfg* %5, %struct.dpni_rule_cfg** %13, align 8
  store %struct.dpni_fs_action_cfg* %6, %struct.dpni_fs_action_cfg** %14, align 8
  %17 = bitcast %struct.fsl_mc_command* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load i32, i32* @DPNI_CMDID_ADD_FS_ENT, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @mc_encode_cmd_header(i32 %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %16, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %16, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dpni_cmd_add_fs_entry*
  store %struct.dpni_cmd_add_fs_entry* %25, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %28 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dpni_rule_cfg*, %struct.dpni_rule_cfg** %13, align 8
  %30 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %33 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %37 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.dpni_rule_cfg*, %struct.dpni_rule_cfg** %13, align 8
  %39 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le64(i32 %40)
  %42 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %43 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.dpni_rule_cfg*, %struct.dpni_rule_cfg** %13, align 8
  %45 = getelementptr inbounds %struct.dpni_rule_cfg, %struct.dpni_rule_cfg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le64(i32 %46)
  %48 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %49 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.dpni_fs_action_cfg*, %struct.dpni_fs_action_cfg** %14, align 8
  %51 = getelementptr inbounds %struct.dpni_fs_action_cfg, %struct.dpni_fs_action_cfg* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %55 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.dpni_fs_action_cfg*, %struct.dpni_fs_action_cfg** %14, align 8
  %57 = getelementptr inbounds %struct.dpni_fs_action_cfg, %struct.dpni_fs_action_cfg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_le16(i32 %58)
  %60 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %61 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.dpni_fs_action_cfg*, %struct.dpni_fs_action_cfg** %14, align 8
  %63 = getelementptr inbounds %struct.dpni_fs_action_cfg, %struct.dpni_fs_action_cfg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le64(i32 %64)
  %66 = load %struct.dpni_cmd_add_fs_entry*, %struct.dpni_cmd_add_fs_entry** %15, align 8
  %67 = getelementptr inbounds %struct.dpni_cmd_add_fs_entry, %struct.dpni_cmd_add_fs_entry* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %69 = call i32 @mc_send_command(%struct.fsl_mc_io* %68, %struct.fsl_mc_command* %16)
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i8* @cpu_to_le64(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
