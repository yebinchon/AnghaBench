; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_set_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_queue = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_set_queue = type { i32, i8*, i8*, i32, i32, i32, i8*, i8*, i8* }

@DPNI_CMDID_SET_QUEUE = common dso_local global i32 0, align 4
@DEST_TYPE = common dso_local global i32 0, align 4
@STASH_CTRL = common dso_local global i32 0, align 4
@HOLD_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_set_queue(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6, %struct.dpni_queue* %7) #0 {
  %9 = alloca %struct.fsl_mc_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dpni_queue*, align 8
  %17 = alloca %struct.fsl_mc_command, align 8
  %18 = alloca %struct.dpni_cmd_set_queue*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.dpni_queue* %7, %struct.dpni_queue** %16, align 8
  %19 = bitcast %struct.fsl_mc_command* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 16, i1 false)
  %20 = load i32, i32* @DPNI_CMDID_SET_QUEUE, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @mc_encode_cmd_header(i32 %20, i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %17, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %17, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.dpni_cmd_set_queue*
  store %struct.dpni_cmd_set_queue* %27, %struct.dpni_cmd_set_queue** %18, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %30 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %33 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %36 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %39 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %41 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %46 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %48 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %52 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %54 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DEST_TYPE, align 4
  %57 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %58 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dpni_set_field(i32 %55, i32 %56, i32 %60)
  %62 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %63 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @STASH_CTRL, align 4
  %66 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %67 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dpni_set_field(i32 %64, i32 %65, i32 %69)
  %71 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %72 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HOLD_ACTIVE, align 4
  %75 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %76 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dpni_set_field(i32 %73, i32 %74, i32 %78)
  %80 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %81 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @cpu_to_le64(i32 %83)
  %85 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %86 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %88 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @cpu_to_le64(i32 %89)
  %91 = load %struct.dpni_cmd_set_queue*, %struct.dpni_cmd_set_queue** %18, align 8
  %92 = getelementptr inbounds %struct.dpni_cmd_set_queue, %struct.dpni_cmd_set_queue* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %94 = call i32 @mc_send_command(%struct.fsl_mc_io* %93, %struct.fsl_mc_command* %17)
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @dpni_set_field(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le64(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
