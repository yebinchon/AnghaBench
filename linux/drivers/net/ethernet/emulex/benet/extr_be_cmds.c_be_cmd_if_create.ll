; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_if_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_if_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i8** }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_if_create = type { i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.be_cmd_resp_if_create = type { i32, i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_INTERFACE_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_if_create(%struct.be_adapter* %0, i8* %1, i8* %2, i8** %3, i8* %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.be_mcc_wrb, align 4
  %12 = alloca %struct.be_cmd_req_if_create*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.be_cmd_resp_if_create*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = bitcast %struct.be_mcc_wrb* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = call i8* @embedded_payload(%struct.be_mcc_wrb* %11)
  %17 = bitcast i8* %16 to %struct.be_cmd_req_if_create*
  store %struct.be_cmd_req_if_create* %17, %struct.be_cmd_req_if_create** %12, align 8
  %18 = load %struct.be_cmd_req_if_create*, %struct.be_cmd_req_if_create** %12, align 8
  %19 = getelementptr inbounds %struct.be_cmd_req_if_create, %struct.be_cmd_req_if_create* %18, i32 0, i32 3
  %20 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %21 = load i32, i32* @OPCODE_COMMON_NTWK_INTERFACE_CREATE, align 4
  %22 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %19, i32 %20, i32 %21, i32 32, %struct.be_mcc_wrb* %11, i32* null)
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.be_cmd_req_if_create*, %struct.be_cmd_req_if_create** %12, align 8
  %25 = getelementptr inbounds %struct.be_cmd_req_if_create, %struct.be_cmd_req_if_create* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @cpu_to_le32(i8* %27)
  %29 = load %struct.be_cmd_req_if_create*, %struct.be_cmd_req_if_create** %12, align 8
  %30 = getelementptr inbounds %struct.be_cmd_req_if_create, %struct.be_cmd_req_if_create* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @cpu_to_le32(i8* %31)
  %33 = load %struct.be_cmd_req_if_create*, %struct.be_cmd_req_if_create** %12, align 8
  %34 = getelementptr inbounds %struct.be_cmd_req_if_create, %struct.be_cmd_req_if_create* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.be_cmd_req_if_create*, %struct.be_cmd_req_if_create** %12, align 8
  %36 = getelementptr inbounds %struct.be_cmd_req_if_create, %struct.be_cmd_req_if_create* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %38 = call i32 @be_cmd_notify_wait(%struct.be_adapter* %37, %struct.be_mcc_wrb* %11)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %5
  %42 = call i8* @embedded_payload(%struct.be_mcc_wrb* %11)
  %43 = bitcast i8* %42 to %struct.be_cmd_resp_if_create*
  store %struct.be_cmd_resp_if_create* %43, %struct.be_cmd_resp_if_create** %14, align 8
  %44 = load %struct.be_cmd_resp_if_create*, %struct.be_cmd_resp_if_create** %14, align 8
  %45 = getelementptr inbounds %struct.be_cmd_resp_if_create, %struct.be_cmd_resp_if_create* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load i8**, i8*** %9, align 8
  store i8* %47, i8** %48, align 8
  %49 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %50 = call i64 @BE3_chip(%struct.be_adapter* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %54 = call i64 @be_virtfn(%struct.be_adapter* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.be_cmd_resp_if_create*, %struct.be_cmd_resp_if_create** %14, align 8
  %58 = getelementptr inbounds %struct.be_cmd_resp_if_create, %struct.be_cmd_resp_if_create* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @le32_to_cpu(i32 %59)
  %61 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %60, i8** %64, align 8
  br label %65

65:                                               ; preds = %56, %52, %41
  br label %66

66:                                               ; preds = %65, %5
  %67 = load i32, i32* %13, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #2

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #2

declare dso_local i8* @cpu_to_le32(i8*) #2

declare dso_local i32 @be_cmd_notify_wait(%struct.be_adapter*, %struct.be_mcc_wrb*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #2

declare dso_local i64 @be_virtfn(%struct.be_adapter*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
