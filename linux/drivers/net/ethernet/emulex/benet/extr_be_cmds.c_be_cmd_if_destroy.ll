; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_if_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_if_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_if_destroy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_NTWK_INTERFACE_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_if_destroy(%struct.be_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_mcc_wrb, align 4
  %9 = alloca %struct.be_cmd_req_if_destroy*, align 8
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.be_mcc_wrb* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

15:                                               ; preds = %3
  %16 = call %struct.be_cmd_req_if_destroy* @embedded_payload(%struct.be_mcc_wrb* %8)
  store %struct.be_cmd_req_if_destroy* %16, %struct.be_cmd_req_if_destroy** %9, align 8
  %17 = load %struct.be_cmd_req_if_destroy*, %struct.be_cmd_req_if_destroy** %9, align 8
  %18 = getelementptr inbounds %struct.be_cmd_req_if_destroy, %struct.be_cmd_req_if_destroy* %17, i32 0, i32 1
  %19 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %20 = load i32, i32* @OPCODE_COMMON_NTWK_INTERFACE_DESTROY, align 4
  %21 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %18, i32 %19, i32 %20, i32 8, %struct.be_mcc_wrb* %8, i32* null)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.be_cmd_req_if_destroy*, %struct.be_cmd_req_if_destroy** %9, align 8
  %24 = getelementptr inbounds %struct.be_cmd_req_if_destroy, %struct.be_cmd_req_if_destroy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.be_cmd_req_if_destroy*, %struct.be_cmd_req_if_destroy** %9, align 8
  %29 = getelementptr inbounds %struct.be_cmd_req_if_destroy, %struct.be_cmd_req_if_destroy* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %31 = call i32 @be_cmd_notify_wait(%struct.be_adapter* %30, %struct.be_mcc_wrb* %8)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %15, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.be_cmd_req_if_destroy* @embedded_payload(%struct.be_mcc_wrb*) #2

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @be_cmd_notify_wait(%struct.be_adapter*, %struct.be_mcc_wrb*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
