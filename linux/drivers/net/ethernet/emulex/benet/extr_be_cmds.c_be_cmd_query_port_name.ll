; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_query_port_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_query_port_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, i64, i32 }
%struct.be_cmd_req_get_port_name = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_resp_get_port_name = type { i64* }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_GET_PORT_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_query_port_name(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_cmd_req_get_port_name*, align 8
  %5 = alloca %struct.be_mcc_wrb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_cmd_resp_get_port_name*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 2
  %10 = call i64 @mutex_lock_interruptible(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %14)
  store %struct.be_mcc_wrb* %15, %struct.be_mcc_wrb** %5, align 8
  %16 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %17 = call i8* @embedded_payload(%struct.be_mcc_wrb* %16)
  %18 = bitcast i8* %17 to %struct.be_cmd_req_get_port_name*
  store %struct.be_cmd_req_get_port_name* %18, %struct.be_cmd_req_get_port_name** %4, align 8
  %19 = load %struct.be_cmd_req_get_port_name*, %struct.be_cmd_req_get_port_name** %4, align 8
  %20 = getelementptr inbounds %struct.be_cmd_req_get_port_name, %struct.be_cmd_req_get_port_name* %19, i32 0, i32 0
  %21 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %22 = load i32, i32* @OPCODE_COMMON_GET_PORT_NAME, align 4
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %24 = call i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__* %20, i32 %21, i32 %22, i32 4, %struct.be_mcc_wrb* %23, i32* null)
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = call i32 @BEx_chip(%struct.be_adapter* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %13
  %29 = load %struct.be_cmd_req_get_port_name*, %struct.be_cmd_req_get_port_name** %4, align 8
  %30 = getelementptr inbounds %struct.be_cmd_req_get_port_name, %struct.be_cmd_req_get_port_name* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %13
  %33 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %34 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %5, align 8
  %39 = call i8* @embedded_payload(%struct.be_mcc_wrb* %38)
  %40 = bitcast i8* %39 to %struct.be_cmd_resp_get_port_name*
  store %struct.be_cmd_resp_get_port_name* %40, %struct.be_cmd_resp_get_port_name** %7, align 8
  %41 = load %struct.be_cmd_resp_get_port_name*, %struct.be_cmd_resp_get_port_name** %7, align 8
  %42 = getelementptr inbounds %struct.be_cmd_resp_get_port_name, %struct.be_cmd_resp_get_port_name* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %58

51:                                               ; preds = %32
  %52 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 48
  %56 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %37
  %59 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %60 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local i8* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.TYPE_2__*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
