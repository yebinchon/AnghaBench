; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_rx_tc_dist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_rx_tc_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_rx_tc_dist_cfg = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_set_rx_tc_dist = type { i32, i8*, i32, i32, i8* }

@DPNI_CMDID_SET_RX_TC_DIST = common dso_local global i32 0, align 4
@DIST_MODE = common dso_local global i32 0, align 4
@MISS_ACTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_set_rx_tc_dist(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.dpni_rx_tc_dist_cfg* %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpni_rx_tc_dist_cfg*, align 8
  %11 = alloca %struct.fsl_mc_command, align 8
  %12 = alloca %struct.dpni_cmd_set_rx_tc_dist*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dpni_rx_tc_dist_cfg* %4, %struct.dpni_rx_tc_dist_cfg** %10, align 8
  %13 = bitcast %struct.fsl_mc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPNI_CMDID_SET_RX_TC_DIST, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dpni_cmd_set_rx_tc_dist*
  store %struct.dpni_cmd_set_rx_tc_dist* %21, %struct.dpni_cmd_set_rx_tc_dist** %12, align 8
  %22 = load %struct.dpni_rx_tc_dist_cfg*, %struct.dpni_rx_tc_dist_cfg** %10, align 8
  %23 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.dpni_cmd_set_rx_tc_dist*, %struct.dpni_cmd_set_rx_tc_dist** %12, align 8
  %27 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, %struct.dpni_cmd_set_rx_tc_dist* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.dpni_cmd_set_rx_tc_dist*, %struct.dpni_cmd_set_rx_tc_dist** %12, align 8
  %30 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, %struct.dpni_cmd_set_rx_tc_dist* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dpni_cmd_set_rx_tc_dist*, %struct.dpni_cmd_set_rx_tc_dist** %12, align 8
  %32 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, %struct.dpni_cmd_set_rx_tc_dist* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DIST_MODE, align 4
  %35 = load %struct.dpni_rx_tc_dist_cfg*, %struct.dpni_rx_tc_dist_cfg** %10, align 8
  %36 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dpni_set_field(i32 %33, i32 %34, i32 %37)
  %39 = load %struct.dpni_cmd_set_rx_tc_dist*, %struct.dpni_cmd_set_rx_tc_dist** %12, align 8
  %40 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, %struct.dpni_cmd_set_rx_tc_dist* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MISS_ACTION, align 4
  %43 = load %struct.dpni_rx_tc_dist_cfg*, %struct.dpni_rx_tc_dist_cfg** %10, align 8
  %44 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dpni_set_field(i32 %41, i32 %42, i32 %46)
  %48 = load %struct.dpni_rx_tc_dist_cfg*, %struct.dpni_rx_tc_dist_cfg** %10, align 8
  %49 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.dpni_cmd_set_rx_tc_dist*, %struct.dpni_cmd_set_rx_tc_dist** %12, align 8
  %54 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, %struct.dpni_cmd_set_rx_tc_dist* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.dpni_rx_tc_dist_cfg*, %struct.dpni_rx_tc_dist_cfg** %10, align 8
  %56 = getelementptr inbounds %struct.dpni_rx_tc_dist_cfg, %struct.dpni_rx_tc_dist_cfg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cpu_to_le64(i32 %57)
  %59 = load %struct.dpni_cmd_set_rx_tc_dist*, %struct.dpni_cmd_set_rx_tc_dist** %12, align 8
  %60 = getelementptr inbounds %struct.dpni_cmd_set_rx_tc_dist, %struct.dpni_cmd_set_rx_tc_dist* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %62 = call i32 @mc_send_command(%struct.fsl_mc_io* %61, %struct.fsl_mc_command* %11)
  ret i32 %62
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
