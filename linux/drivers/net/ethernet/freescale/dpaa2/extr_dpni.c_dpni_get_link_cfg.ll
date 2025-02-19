; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_link_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_link_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_link_cfg = type { i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_link_cfg = type { i32, i32 }

@DPNI_CMDID_GET_LINK_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_get_link_cfg(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpni_link_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpni_link_cfg*, align 8
  %10 = alloca %struct.fsl_mc_command, align 8
  %11 = alloca %struct.dpni_cmd_link_cfg*, align 8
  %12 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dpni_link_cfg* %3, %struct.dpni_link_cfg** %9, align 8
  %13 = bitcast %struct.fsl_mc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPNI_CMDID_GET_LINK_CFG, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %20 = call i32 @mc_send_command(%struct.fsl_mc_io* %19, %struct.fsl_mc_command* %10)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %42

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.dpni_cmd_link_cfg*
  store %struct.dpni_cmd_link_cfg* %28, %struct.dpni_cmd_link_cfg** %11, align 8
  %29 = load %struct.dpni_cmd_link_cfg*, %struct.dpni_cmd_link_cfg** %11, align 8
  %30 = getelementptr inbounds %struct.dpni_cmd_link_cfg, %struct.dpni_cmd_link_cfg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.dpni_link_cfg*, %struct.dpni_link_cfg** %9, align 8
  %34 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dpni_cmd_link_cfg*, %struct.dpni_cmd_link_cfg** %11, align 8
  %36 = getelementptr inbounds %struct.dpni_cmd_link_cfg, %struct.dpni_cmd_link_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le64_to_cpu(i32 %37)
  %39 = load %struct.dpni_link_cfg*, %struct.dpni_link_cfg** %9, align 8
  %40 = getelementptr inbounds %struct.dpni_link_cfg, %struct.dpni_link_cfg* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %25, %23
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @le64_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
