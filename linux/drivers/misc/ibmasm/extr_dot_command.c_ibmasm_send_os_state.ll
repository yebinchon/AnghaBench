; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_dot_command.c_ibmasm_send_os_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_dot_command.c_ibmasm_send_os_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { i32 }
%struct.command = type { i64, i64 }
%struct.os_state_command = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@sp_write = common dso_local global i32 0, align 4
@IBMASM_CMD_TIMEOUT_NORMAL = common dso_local global i32 0, align 4
@IBMASM_CMD_COMPLETE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmasm_send_os_state(%struct.service_processor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.service_processor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.command*, align 8
  %7 = alloca %struct.os_state_command*, align 8
  %8 = alloca i32, align 4
  store %struct.service_processor* %0, %struct.service_processor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %10 = call %struct.command* @ibmasm_new_command(%struct.service_processor* %9, i32 40)
  store %struct.command* %10, %struct.command** %6, align 8
  %11 = load %struct.command*, %struct.command** %6, align 8
  %12 = icmp eq %struct.command* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.command*, %struct.command** %6, align 8
  %18 = getelementptr inbounds %struct.command, %struct.command* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.os_state_command*
  store %struct.os_state_command* %20, %struct.os_state_command** %7, align 8
  %21 = load i32, i32* @sp_write, align 4
  %22 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %23 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %26 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 3, i32* %27, align 8
  %28 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %29 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %32 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %35 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 4, i32* %37, align 4
  %38 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %39 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 3, i32* %41, align 4
  %42 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %43 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 6, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.os_state_command*, %struct.os_state_command** %7, align 8
  %48 = getelementptr inbounds %struct.os_state_command, %struct.os_state_command* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %50 = load %struct.command*, %struct.command** %6, align 8
  %51 = call i32 @ibmasm_exec_command(%struct.service_processor* %49, %struct.command* %50)
  %52 = load %struct.command*, %struct.command** %6, align 8
  %53 = load i32, i32* @IBMASM_CMD_TIMEOUT_NORMAL, align 4
  %54 = call i32 @ibmasm_wait_for_response(%struct.command* %52, i32 %53)
  %55 = load %struct.command*, %struct.command** %6, align 8
  %56 = getelementptr inbounds %struct.command, %struct.command* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IBMASM_CMD_COMPLETE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %16
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %16
  %64 = load %struct.command*, %struct.command** %6, align 8
  %65 = call i32 @command_put(%struct.command* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.command* @ibmasm_new_command(%struct.service_processor*, i32) #1

declare dso_local i32 @ibmasm_exec_command(%struct.service_processor*, %struct.command*) #1

declare dso_local i32 @ibmasm_wait_for_response(%struct.command*, i32) #1

declare dso_local i32 @command_put(%struct.command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
