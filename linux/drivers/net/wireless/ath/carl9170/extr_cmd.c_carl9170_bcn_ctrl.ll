; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_bcn_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_bcn_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.carl9170_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@CARL9170_CMD_BCN_CTRL_ASYNC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_bcn_ctrl(%struct.ar9170* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar9170*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.carl9170_cmd*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %14 = load i32, i32* @CARL9170_CMD_BCN_CTRL_ASYNC, align 4
  %15 = call %struct.carl9170_cmd* @carl9170_cmd_buf(%struct.ar9170* %13, i32 %14, i32 4)
  store %struct.carl9170_cmd* %15, %struct.carl9170_cmd** %12, align 8
  %16 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %12, align 8
  %17 = icmp ne %struct.carl9170_cmd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %45

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %12, align 8
  %25 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %12, align 8
  %30 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %12, align 8
  %35 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %12, align 8
  %40 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  %43 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %12, align 8
  %44 = call i32 @__carl9170_exec_cmd(%struct.ar9170* %42, %struct.carl9170_cmd* %43, i32 1)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %21, %18
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.carl9170_cmd* @carl9170_cmd_buf(%struct.ar9170*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @__carl9170_exec_cmd(%struct.ar9170*, %struct.carl9170_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
