; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_event_registers_startup_state_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_event_registers_startup_state_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.abx500_ops = type { i32 (%struct.device*, i32*)* }

@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abx500_event_registers_startup_state_get(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.abx500_ops*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @lookup_ops(i32 %9, %struct.abx500_ops** %6)
  %11 = load %struct.abx500_ops*, %struct.abx500_ops** %6, align 8
  %12 = icmp ne %struct.abx500_ops* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.abx500_ops*, %struct.abx500_ops** %6, align 8
  %15 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.device*, i32*)*, i32 (%struct.device*, i32*)** %15, align 8
  %17 = icmp ne i32 (%struct.device*, i32*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.abx500_ops*, %struct.abx500_ops** %6, align 8
  %20 = getelementptr inbounds %struct.abx500_ops, %struct.abx500_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.device*, i32*)*, i32 (%struct.device*, i32*)** %20, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 %21(%struct.device* %22, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %13, %2
  %26 = load i32, i32* @ENOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @lookup_ops(i32, %struct.abx500_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
