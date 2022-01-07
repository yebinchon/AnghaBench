; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_intr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_intr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_intr_set = type { i32, i32 }

@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_SET_INTERRUPT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_intr_set(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_mcc_wrb*, align 8
  %7 = alloca %struct.be_cmd_req_intr_set*, align 8
  %8 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %16 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %15)
  store %struct.be_mcc_wrb* %16, %struct.be_mcc_wrb** %6, align 8
  %17 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %18 = call %struct.be_cmd_req_intr_set* @embedded_payload(%struct.be_mcc_wrb* %17)
  store %struct.be_cmd_req_intr_set* %18, %struct.be_cmd_req_intr_set** %7, align 8
  %19 = load %struct.be_cmd_req_intr_set*, %struct.be_cmd_req_intr_set** %7, align 8
  %20 = getelementptr inbounds %struct.be_cmd_req_intr_set, %struct.be_cmd_req_intr_set* %19, i32 0, i32 1
  %21 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %22 = load i32, i32* @OPCODE_COMMON_SET_INTERRUPT_ENABLE, align 4
  %23 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %6, align 8
  %24 = call i32 @be_wrb_cmd_hdr_prepare(i32* %20, i32 %21, i32 %22, i32 8, %struct.be_mcc_wrb* %23, i32* null)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.be_cmd_req_intr_set*, %struct.be_cmd_req_intr_set** %7, align 8
  %27 = getelementptr inbounds %struct.be_cmd_req_intr_set, %struct.be_cmd_req_intr_set* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %29 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %14, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_intr_set* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
