; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_reset_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_reset_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_hdr = type { i32 }

@SLI_PORT_CONTROL_IP_MASK = common dso_local global i32 0, align 4
@SLIPORT_CONTROL_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Adapter in non recoverable error\0A\00", align 1
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_FUNCTION_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_reset_function(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_mcc_wrb*, align 8
  %5 = alloca %struct.be_cmd_req_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = call i64 @lancer_chip(%struct.be_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* @SLI_PORT_CONTROL_IP_MASK, align 4
  %12 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SLIPORT_CONTROL_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32(i32 %11, i64 %16)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = call i32 @lancer_wait_ready(%struct.be_adapter* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %10
  %23 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %10
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %1
  %31 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = call i64 @mutex_lock_interruptible(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %52

36:                                               ; preds = %30
  %37 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %38 = call %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter* %37)
  store %struct.be_mcc_wrb* %38, %struct.be_mcc_wrb** %4, align 8
  %39 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %40 = call %struct.be_cmd_req_hdr* @embedded_payload(%struct.be_mcc_wrb* %39)
  store %struct.be_cmd_req_hdr* %40, %struct.be_cmd_req_hdr** %5, align 8
  %41 = load %struct.be_cmd_req_hdr*, %struct.be_cmd_req_hdr** %5, align 8
  %42 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %43 = load i32, i32* @OPCODE_COMMON_FUNCTION_RESET, align 4
  %44 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %4, align 8
  %45 = call i32 @be_wrb_cmd_hdr_prepare(%struct.be_cmd_req_hdr* %41, i32 %42, i32 %43, i32 4, %struct.be_mcc_wrb* %44, i32* null)
  %46 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %47 = call i32 @be_mbox_notify_wait(%struct.be_adapter* %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %36, %35, %28
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @lancer_wait_ready(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mbox(%struct.be_adapter*) #1

declare dso_local %struct.be_cmd_req_hdr* @embedded_payload(%struct.be_mcc_wrb*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(%struct.be_cmd_req_hdr*, i32, i32, i32, %struct.be_mcc_wrb*, i32*) #1

declare dso_local i32 @be_mbox_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
