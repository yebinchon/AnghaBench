; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_get_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpni_queue = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i32, i8* }
%struct.dpni_queue_id = type { i32, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_get_queue = type { i32, i8*, i8* }
%struct.dpni_rsp_get_queue = type { i32, i32, i32, i32, i32, i32, i32 }

@DPNI_CMDID_GET_QUEUE = common dso_local global i32 0, align 4
@DEST_TYPE = common dso_local global i32 0, align 4
@STASH_CTRL = common dso_local global i32 0, align 4
@HOLD_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_get_queue(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, %struct.dpni_queue* %6, %struct.dpni_queue_id* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_mc_io*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dpni_queue*, align 8
  %17 = alloca %struct.dpni_queue_id*, align 8
  %18 = alloca %struct.fsl_mc_command, align 8
  %19 = alloca %struct.dpni_cmd_get_queue*, align 8
  %20 = alloca %struct.dpni_rsp_get_queue*, align 8
  %21 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.dpni_queue* %6, %struct.dpni_queue** %16, align 8
  store %struct.dpni_queue_id* %7, %struct.dpni_queue_id** %17, align 8
  %22 = bitcast %struct.fsl_mc_command* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = load i32, i32* @DPNI_CMDID_GET_QUEUE, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @mc_encode_cmd_header(i32 %23, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %18, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %18, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.dpni_cmd_get_queue*
  store %struct.dpni_cmd_get_queue* %30, %struct.dpni_cmd_get_queue** %19, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.dpni_cmd_get_queue*, %struct.dpni_cmd_get_queue** %19, align 8
  %33 = getelementptr inbounds %struct.dpni_cmd_get_queue, %struct.dpni_cmd_get_queue* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.dpni_cmd_get_queue*, %struct.dpni_cmd_get_queue** %19, align 8
  %36 = getelementptr inbounds %struct.dpni_cmd_get_queue, %struct.dpni_cmd_get_queue* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.dpni_cmd_get_queue*, %struct.dpni_cmd_get_queue** %19, align 8
  %39 = getelementptr inbounds %struct.dpni_cmd_get_queue, %struct.dpni_cmd_get_queue* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %10, align 8
  %41 = call i32 @mc_send_command(%struct.fsl_mc_io* %40, %struct.fsl_mc_command* %18)
  store i32 %41, i32* %21, align 4
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %8
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %9, align 4
  br label %112

46:                                               ; preds = %8
  %47 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %18, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.dpni_rsp_get_queue*
  store %struct.dpni_rsp_get_queue* %49, %struct.dpni_rsp_get_queue** %20, align 8
  %50 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %51 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %55 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  %57 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %58 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %61 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %64 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DEST_TYPE, align 4
  %67 = call i8* @dpni_get_field(i32 %65, i32 %66)
  %68 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %69 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %72 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @STASH_CTRL, align 4
  %75 = call i8* @dpni_get_field(i32 %73, i32 %74)
  %76 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %77 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %80 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HOLD_ACTIVE, align 4
  %83 = call i8* @dpni_get_field(i32 %81, i32 %82)
  %84 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %85 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %88 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le64_to_cpu(i32 %89)
  %91 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %92 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %95 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le64_to_cpu(i32 %96)
  %98 = load %struct.dpni_queue*, %struct.dpni_queue** %16, align 8
  %99 = getelementptr inbounds %struct.dpni_queue, %struct.dpni_queue* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %101 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le32_to_cpu(i32 %102)
  %104 = load %struct.dpni_queue_id*, %struct.dpni_queue_id** %17, align 8
  %105 = getelementptr inbounds %struct.dpni_queue_id, %struct.dpni_queue_id* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.dpni_rsp_get_queue*, %struct.dpni_rsp_get_queue** %20, align 8
  %107 = getelementptr inbounds %struct.dpni_rsp_get_queue, %struct.dpni_rsp_get_queue* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = load %struct.dpni_queue_id*, %struct.dpni_queue_id** %17, align 8
  %111 = getelementptr inbounds %struct.dpni_queue_id, %struct.dpni_queue_id* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %46, %44
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i8* @dpni_get_field(i32, i32) #2

declare dso_local i8* @le64_to_cpu(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
