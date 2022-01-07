; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32 }

@CMD_BLOCK_PARAMETERS_OFFSET = common dso_local global i32 0, align 4
@CMD_BLOCK_COMMAND_OFFSET = common dso_local global i32 0, align 4
@CMD_BLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, i32, i8*, i32)* @atmel_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_send_command(%struct.atmel_private* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.atmel_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %16 = load i32, i32* @CMD_BLOCK_PARAMETERS_OFFSET, align 4
  %17 = call i32 @atmel_co(%struct.atmel_private* %15, i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @atmel_copy_to_card(i32 %14, i32 %17, i8* %18, i32 %19)
  br label %21

21:                                               ; preds = %11, %4
  %22 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %23 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %24 = load i32, i32* @CMD_BLOCK_COMMAND_OFFSET, align 4
  %25 = call i32 @atmel_co(%struct.atmel_private* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @atmel_wmem8(%struct.atmel_private* %22, i32 %25, i32 %26)
  %28 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %29 = load %struct.atmel_private*, %struct.atmel_private** %5, align 8
  %30 = load i32, i32* @CMD_BLOCK_STATUS_OFFSET, align 4
  %31 = call i32 @atmel_co(%struct.atmel_private* %29, i32 %30)
  %32 = call i32 @atmel_wmem8(%struct.atmel_private* %28, i32 %31, i32 0)
  ret void
}

declare dso_local i32 @atmel_copy_to_card(i32, i32, i8*, i32) #1

declare dso_local i32 @atmel_co(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_wmem8(%struct.atmel_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
