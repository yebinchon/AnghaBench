; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_rx_fs_dist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_rx_fs_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_rx_dist_cfg = type { i32, i32, i32, i32, i32 }
%struct.dpni_cmd_set_rx_fs_dist = type { i32, i8*, i32, i32, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }

@DPNI_CMDID_SET_RX_FS_DIST = common dso_local global i32 0, align 4
@RX_FS_DIST_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_set_rx_fs_dist(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpni_rx_dist_cfg* %3) #0 {
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpni_rx_dist_cfg*, align 8
  %9 = alloca %struct.dpni_cmd_set_rx_fs_dist*, align 8
  %10 = alloca %struct.fsl_mc_command, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dpni_rx_dist_cfg* %3, %struct.dpni_rx_dist_cfg** %8, align 8
  %11 = bitcast %struct.fsl_mc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @DPNI_CMDID_SET_RX_FS_DIST, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mc_encode_cmd_header(i32 %12, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dpni_cmd_set_rx_fs_dist*
  store %struct.dpni_cmd_set_rx_fs_dist* %19, %struct.dpni_cmd_set_rx_fs_dist** %9, align 8
  %20 = load %struct.dpni_rx_dist_cfg*, %struct.dpni_rx_dist_cfg** %8, align 8
  %21 = getelementptr inbounds %struct.dpni_rx_dist_cfg, %struct.dpni_rx_dist_cfg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.dpni_cmd_set_rx_fs_dist*, %struct.dpni_cmd_set_rx_fs_dist** %9, align 8
  %25 = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, %struct.dpni_cmd_set_rx_fs_dist* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.dpni_cmd_set_rx_fs_dist*, %struct.dpni_cmd_set_rx_fs_dist** %9, align 8
  %27 = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, %struct.dpni_cmd_set_rx_fs_dist* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RX_FS_DIST_ENABLE, align 4
  %30 = load %struct.dpni_rx_dist_cfg*, %struct.dpni_rx_dist_cfg** %8, align 8
  %31 = getelementptr inbounds %struct.dpni_rx_dist_cfg, %struct.dpni_rx_dist_cfg* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dpni_set_field(i32 %28, i32 %29, i32 %32)
  %34 = load %struct.dpni_rx_dist_cfg*, %struct.dpni_rx_dist_cfg** %8, align 8
  %35 = getelementptr inbounds %struct.dpni_rx_dist_cfg, %struct.dpni_rx_dist_cfg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dpni_cmd_set_rx_fs_dist*, %struct.dpni_cmd_set_rx_fs_dist** %9, align 8
  %38 = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, %struct.dpni_cmd_set_rx_fs_dist* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dpni_rx_dist_cfg*, %struct.dpni_rx_dist_cfg** %8, align 8
  %40 = getelementptr inbounds %struct.dpni_rx_dist_cfg, %struct.dpni_rx_dist_cfg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.dpni_cmd_set_rx_fs_dist*, %struct.dpni_cmd_set_rx_fs_dist** %9, align 8
  %44 = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, %struct.dpni_cmd_set_rx_fs_dist* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dpni_rx_dist_cfg*, %struct.dpni_rx_dist_cfg** %8, align 8
  %46 = getelementptr inbounds %struct.dpni_rx_dist_cfg, %struct.dpni_rx_dist_cfg* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpu_to_le64(i32 %47)
  %49 = load %struct.dpni_cmd_set_rx_fs_dist*, %struct.dpni_cmd_set_rx_fs_dist** %9, align 8
  %50 = getelementptr inbounds %struct.dpni_cmd_set_rx_fs_dist, %struct.dpni_cmd_set_rx_fs_dist* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %52 = call i32 @mc_send_command(%struct.fsl_mc_io* %51, %struct.fsl_mc_command* %10)
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @dpni_set_field(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
