; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_command.c_ibmasm_receive_command_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_command.c_ibmasm_receive_command_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { %struct.command* }
%struct.command = type { i32, i32, i32, i32 }

@IBMASM_CMD_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibmasm_receive_command_response(%struct.service_processor* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.service_processor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.command*, align 8
  store %struct.service_processor* %0, %struct.service_processor** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %9 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %8, i32 0, i32 0
  %10 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %10, %struct.command** %7, align 8
  %11 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %12 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %11, i32 0, i32 0
  %13 = load %struct.command*, %struct.command** %12, align 8
  %14 = icmp ne %struct.command* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.command*, %struct.command** %7, align 8
  %18 = getelementptr inbounds %struct.command, %struct.command* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.command*, %struct.command** %7, align 8
  %23 = getelementptr inbounds %struct.command, %struct.command* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @min(i64 %21, i32 %24)
  %26 = call i32 @memcpy_fromio(i32 %19, i8* %20, i32 %25)
  %27 = load i32, i32* @IBMASM_CMD_COMPLETE, align 4
  %28 = load %struct.command*, %struct.command** %7, align 8
  %29 = getelementptr inbounds %struct.command, %struct.command* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %31 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %30, i32 0, i32 0
  %32 = load %struct.command*, %struct.command** %31, align 8
  %33 = getelementptr inbounds %struct.command, %struct.command* %32, i32 0, i32 0
  %34 = call i32 @wake_up(i32* %33)
  %35 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %36 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %35, i32 0, i32 0
  %37 = load %struct.command*, %struct.command** %36, align 8
  %38 = call i32 @command_put(%struct.command* %37)
  %39 = load %struct.service_processor*, %struct.service_processor** %4, align 8
  %40 = call i32 @exec_next_command(%struct.service_processor* %39)
  br label %41

41:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @memcpy_fromio(i32, i8*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @command_put(%struct.command*) #1

declare dso_local i32 @exec_next_command(%struct.service_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
