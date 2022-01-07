; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_power_down_a10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_power_down_a10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32 }
%struct.si476x_power_down_args = type { i32 }

@CMD_POWER_DOWN_A10_NRESP = common dso_local global i32 0, align 4
@CMD_POWER_DOWN = common dso_local global i32 0, align 4
@SI476X_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*, %struct.si476x_power_down_args*)* @si476x_core_cmd_power_down_a10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_cmd_power_down_a10(%struct.si476x_core* %0, %struct.si476x_power_down_args* %1) #0 {
  %3 = alloca %struct.si476x_core*, align 8
  %4 = alloca %struct.si476x_power_down_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.si476x_core* %0, %struct.si476x_core** %3, align 8
  store %struct.si476x_power_down_args* %1, %struct.si476x_power_down_args** %4, align 8
  %7 = load i32, i32* @CMD_POWER_DOWN_A10_NRESP, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %12 = load i32, i32* @CMD_POWER_DOWN, align 4
  %13 = call i32 @ARRAY_SIZE(i32* %10)
  %14 = load i32, i32* @SI476X_DEFAULT_TIMEOUT, align 4
  %15 = call i32 @si476x_core_send_command(%struct.si476x_core* %11, i32 %12, i32* null, i32 0, i32* %10, i32 %13, i32 %14)
  %16 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %16)
  ret i32 %15
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si476x_core_send_command(%struct.si476x_core*, i32, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
