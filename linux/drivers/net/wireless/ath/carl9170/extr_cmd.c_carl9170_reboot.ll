; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.carl9170_cmd = type { i32 }

@CARL9170_CMD_REBOOT_ASYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_reboot(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.carl9170_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %6 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %7 = load i32, i32* @CARL9170_CMD_REBOOT_ASYNC, align 4
  %8 = call %struct.carl9170_cmd* @carl9170_cmd_buf(%struct.ar9170* %6, i32 %7, i32 0)
  store %struct.carl9170_cmd* %8, %struct.carl9170_cmd** %4, align 8
  %9 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %4, align 8
  %10 = icmp ne %struct.carl9170_cmd* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %16 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %4, align 8
  %17 = call i32 @__carl9170_exec_cmd(%struct.ar9170* %15, %struct.carl9170_cmd* %16, i32 1)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.carl9170_cmd* @carl9170_cmd_buf(%struct.ar9170*, i32, i32) #1

declare dso_local i32 @__carl9170_exec_cmd(%struct.ar9170*, %struct.carl9170_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
