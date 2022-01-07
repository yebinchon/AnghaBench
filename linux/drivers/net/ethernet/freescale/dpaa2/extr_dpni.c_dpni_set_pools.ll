; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_pools_cfg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_set_pools = type { i32, i32*, i32*, i32 }

@DPNI_CMDID_SET_POOLS = common dso_local global i32 0, align 4
@DPNI_MAX_DPBP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_set_pools(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpni_pools_cfg* %3) #0 {
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpni_pools_cfg*, align 8
  %9 = alloca %struct.fsl_mc_command, align 8
  %10 = alloca %struct.dpni_cmd_set_pools*, align 8
  %11 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dpni_pools_cfg* %3, %struct.dpni_pools_cfg** %8, align 8
  %12 = bitcast %struct.fsl_mc_command* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* @DPNI_CMDID_SET_POOLS, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mc_encode_cmd_header(i32 %13, i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dpni_cmd_set_pools*
  store %struct.dpni_cmd_set_pools* %20, %struct.dpni_cmd_set_pools** %10, align 8
  %21 = load %struct.dpni_pools_cfg*, %struct.dpni_pools_cfg** %8, align 8
  %22 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dpni_cmd_set_pools*, %struct.dpni_cmd_set_pools** %10, align 8
  %25 = getelementptr inbounds %struct.dpni_cmd_set_pools, %struct.dpni_cmd_set_pools* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %75, %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @DPNI_MAX_DPBP, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load %struct.dpni_pools_cfg*, %struct.dpni_pools_cfg** %8, align 8
  %32 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load %struct.dpni_cmd_set_pools*, %struct.dpni_cmd_set_pools** %10, align 8
  %41 = getelementptr inbounds %struct.dpni_cmd_set_pools, %struct.dpni_cmd_set_pools* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.dpni_pools_cfg*, %struct.dpni_pools_cfg** %8, align 8
  %47 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpu_to_le16(i32 %53)
  %55 = load %struct.dpni_cmd_set_pools*, %struct.dpni_cmd_set_pools** %10, align 8
  %56 = getelementptr inbounds %struct.dpni_cmd_set_pools, %struct.dpni_cmd_set_pools* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.dpni_pools_cfg*, %struct.dpni_pools_cfg** %8, align 8
  %62 = getelementptr inbounds %struct.dpni_pools_cfg, %struct.dpni_pools_cfg* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @DPNI_BACKUP_POOL(i32 %68, i32 %69)
  %71 = load %struct.dpni_cmd_set_pools*, %struct.dpni_cmd_set_pools** %10, align 8
  %72 = getelementptr inbounds %struct.dpni_cmd_set_pools, %struct.dpni_cmd_set_pools* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %30
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %26

78:                                               ; preds = %26
  %79 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %80 = call i32 @mc_send_command(%struct.fsl_mc_io* %79, %struct.fsl_mc_command* %9)
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @DPNI_BACKUP_POOL(i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
