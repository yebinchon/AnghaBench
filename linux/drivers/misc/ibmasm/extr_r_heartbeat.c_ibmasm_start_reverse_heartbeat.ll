; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_r_heartbeat.c_ibmasm_start_reverse_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_r_heartbeat.c_ibmasm_start_reverse_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { i32 }
%struct.reverse_heartbeat = type { i64, i32 }
%struct.command = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@rhb_dot_cmd = common dso_local global i32 0, align 4
@IBMASM_CMD_PENDING = common dso_local global i64 0, align 8
@IBMASM_CMD_TIMEOUT_NORMAL = common dso_local global i32 0, align 4
@IBMASM_CMD_COMPLETE = common dso_local global i64 0, align 8
@REVERSE_HEARTBEAT_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibmasm_start_reverse_heartbeat(%struct.service_processor* %0, %struct.reverse_heartbeat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.service_processor*, align 8
  %5 = alloca %struct.reverse_heartbeat*, align 8
  %6 = alloca %struct.command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.service_processor* %0, %struct.service_processor** %4, align 8
  store %struct.reverse_heartbeat* %1, %struct.reverse_heartbeat** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %10 = call %struct.command* @ibmasm_new_command(%struct.service_processor* %9, i32 4)
  store %struct.command* %10, %struct.command** %6, align 8
  %11 = load %struct.command*, %struct.command** %6, align 8
  %12 = icmp ne %struct.command* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %71

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %64, %16
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = load %struct.command*, %struct.command** %6, align 8
  %22 = getelementptr inbounds %struct.command, %struct.command* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32 %23, i8* bitcast (i32* @rhb_dot_cmd to i8*), i32 4)
  %25 = load i64, i64* @IBMASM_CMD_PENDING, align 8
  %26 = load %struct.command*, %struct.command** %6, align 8
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %29 = load %struct.command*, %struct.command** %6, align 8
  %30 = call i32 @ibmasm_exec_command(%struct.service_processor* %28, %struct.command* %29)
  %31 = load %struct.command*, %struct.command** %6, align 8
  %32 = load i32, i32* @IBMASM_CMD_TIMEOUT_NORMAL, align 4
  %33 = call i32 @ibmasm_wait_for_response(%struct.command* %31, i32 %32)
  %34 = load %struct.command*, %struct.command** %6, align 8
  %35 = getelementptr inbounds %struct.command, %struct.command* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IBMASM_CMD_COMPLETE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %20
  %43 = load %struct.reverse_heartbeat*, %struct.reverse_heartbeat** %5, align 8
  %44 = getelementptr inbounds %struct.reverse_heartbeat, %struct.reverse_heartbeat* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.reverse_heartbeat*, %struct.reverse_heartbeat** %5, align 8
  %47 = getelementptr inbounds %struct.reverse_heartbeat, %struct.reverse_heartbeat* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @REVERSE_HEARTBEAT_TIMEOUT, align 4
  %50 = load i32, i32* @HZ, align 4
  %51 = mul nsw i32 %49, %50
  %52 = call i32 @wait_event_interruptible_timeout(i32 %45, i64 %48, i32 %51)
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @signal_pending(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %42
  %57 = load %struct.reverse_heartbeat*, %struct.reverse_heartbeat** %5, align 8
  %58 = getelementptr inbounds %struct.reverse_heartbeat, %struct.reverse_heartbeat* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %42
  %62 = load i32, i32* @EINTR, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %56
  br label %17

65:                                               ; preds = %61, %17
  %66 = load %struct.command*, %struct.command** %6, align 8
  %67 = call i32 @command_put(%struct.command* %66)
  %68 = load %struct.reverse_heartbeat*, %struct.reverse_heartbeat** %5, align 8
  %69 = getelementptr inbounds %struct.reverse_heartbeat, %struct.reverse_heartbeat* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.command* @ibmasm_new_command(%struct.service_processor*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ibmasm_exec_command(%struct.service_processor*, %struct.command*) #1

declare dso_local i32 @ibmasm_wait_for_response(%struct.command*, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i64, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @command_put(%struct.command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
